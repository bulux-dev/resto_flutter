<div class="modal fade common-validation-modal" id="staff-edit-modal">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5">{{ __('Edit Staff') }}</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="personal-info">
                    <form action="" method="post" enctype="multipart/form-data"
                        class="ajaxform_instant_reload staffUpdateForm">
                        @csrf
                        @method('put')
                        <div class="row">
                            <div class="mb-2 col-lg-6">
                                <label class="custom-top-label">{{ __('Name') }}</label>
                                <input type="text" name="name" id="stf_name" placeholder="{{ __('Enter Full Name') }}" required
                                    class="form-control" />
                            </div>
                            <div class="mb-2 col-lg-6">
                                <label class="custom-top-label">{{ __('Email') }}</label>
                                <input type="email" name="email" id="stf_email" placeholder="{{ __('Enter Your Email') }}" required
                                    class="form-control" />
                            </div>
                            <div class="mb-2 col-lg-6">
                                <label class="custom-top-label">{{ __('Phone') }}</label>
                                <input type="number" name="phone" id="stf_phone" placeholder="{{ __('Enter Phone Number') }}"
                                    class="form-control" />
                            </div>
                            <div class="mb-2 col-lg-6">
                                <label class="custom-top-label">{{ __('Designation') }}</label>
                                <div class="gpt-up-down-arrow position-relative">
                                    <select class="form-control form-selected" id="stf_designation" name="designation">
                                        <option value="">{{ __('Select a one') }}</option>
                                        <option value="manager">{{ __('Manager') }}</option>
                                        <option value="waiter">{{ __('Waiter') }}</option>
                                        <option value="chef">{{ __('Chef') }}</option>
                                        <option value="cleaner">{{ __('Cleaner') }}</option>
                                        <option value="driver">{{ __('Driver') }}</option>
                                        <option value="delivery_boy">{{ __('Delivery Boy') }}</option>
                                    </select>
                                    <span></span>
                                </div>
                            </div>
                            <div class="mb-2 col-lg-12">
                                <label class="custom-top-label">{{ __('Address') }}</label>
                                <input type="text" name="address" id="stf_address" placeholder="{{ __('Enter Your Address') }}"
                                    class="form-control" />
                            </div>
                        </div>
                        <div class="offcanvas-footer mt-3">
                            @usercan('staff.update')
                            <div class="button-group text-center mt-3">
                                <a href="{{ route('business.categories.index') }}"
                                    class="theme-btn border-btn m-2">{{ __('Cancel') }}</a>
                                <button class="theme-btn m-2 submit-btn">{{ __('Save') }}</button>
                            </div>
                            @endusercan
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
