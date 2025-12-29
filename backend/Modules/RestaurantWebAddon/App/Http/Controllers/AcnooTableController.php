<?php

namespace Modules\RestaurantWebAddon\App\Http\Controllers;

use App\Models\Table;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Barryvdh\DomPDF\Facade\Pdf;
use Maatwebsite\Excel\Facades\Excel;
use Modules\RestaurantWebAddon\App\Exports\TableExport;

class AcnooTableController extends Controller
{
    public function __construct()
    {
        $this->middleware('check.permission:tables.view')->only('index');
        $this->middleware('check.permission:tables.create')->only('store');
        $this->middleware('check.permission:tables.update')->only('update', 'status');
        $this->middleware('check.permission:tables.delete')->only('destroy', 'deleteAll');
    }

    public function index(Request $request)
    {
        $tables = Table::where('business_id', auth()->user()->business_id)->latest()->paginate(20);
        return view('restaurantwebaddon::tables.index', compact('tables'));
    }

    public function acnooFilter(Request $request)
    {
        $tables = Table::where('business_id', auth()->user()->business_id)
            ->when(request('search'), function ($q) use ($request) {
                $q->where(function ($q) use ($request) {
                    $q->where('name', 'like', '%' . $request->search . '%')
                        ->orWhere('capacity', 'like', '%' . $request->search . '%');
                });
            })
            ->when(isset($request->is_booked), function ($q) use ($request) {
                $q->where('is_booked', $request->is_booked);
            })
            ->latest()
            ->paginate($request->per_page ?? 10);

        if ($request->ajax()) {
            return response()->json([
                'data' => view('restaurantwebaddon::tables.datas', compact('tables'))->render()
            ]);
        }
        return redirect(url()->previous());
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:tables,name,NULL,id,business_id,' . auth()->user()->business_id,
            'capacity' => 'required|integer'
        ]);

        Table::create($request->except('business_id') + [
            'business_id' => auth()->user()->business_id
        ]);

        return response()->json([
            'message' => __('Table added successfully.'),
            'redirect' => route('business.tables.index')
        ]);
    }

    public function update(Request $request, string $id)
    {
        $table = Table::findOrFail($id);
        $request->validate([
            'name' => [
                'required',
                'unique:tables,name,' . $table->id . ',id,business_id,' . auth()->user()->business_id,
            ],
            'capacity' => 'required|integer'
        ]);
        $table = Table::findOrFail($id);

        $table->update($request->except('business_id'));

        return response()->json([
            'message' => __('Table updated successfully.'),
            'redirect' => route('business.tables.index')
        ]);
    }

    public function status(Request $request, string $id)
    {
        $table = Table::findOrFail($id);
        $table->update(['status' => $request->status]);
        return response()->json(['message' => __('Table')]);
    }

    public function destroy(String $id)
    {
        Table::where('id', $id)->delete();

        return response()->json([
            'message' => __('Table deleted successfully.'),
            'redirect' => route('business.tables.index')
        ]);
    }

    public function deleteAll(Request $request)
    {
        Table::where('id', $request->ids)->delete();

        return response()->json([
            'message' => __('Selected table deleted successfully.'),
            'redirect' => route('business.tables.index')
        ]);
    }

    public function generatePDF(Request $request)
    {
        $tables = Table::where('business_id', auth()->user()->business_id)->latest()->get();
        $pdf = Pdf::loadView('restaurantwebaddon::tables.pdf', compact('tables'));
        return $pdf->download('table-list.pdf');
    }

    public function exportExcel()
    {
        return Excel::download(new TableExport, 'table-list.xlsx');
    }

    public function exportCsv()
    {
        return Excel::download(new TableExport, 'table-list.csv');
    }
}
