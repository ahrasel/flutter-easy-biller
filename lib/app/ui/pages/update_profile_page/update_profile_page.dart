import 'package:easy_biller/app/controllers/update_profile_controller.dart';
import 'package:easy_biller/app/data/models/appuser/appuser.dart';
import 'package:easy_biller/app/ui/layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';

class UpdateProfilePage extends GetView<UpdateProfileController> {
  final _firstNameController = TextEditingController();

  final _lastNameController = TextEditingController();

  final _emailController = TextEditingController();

  final _phoneNumberController = TextEditingController();

  final _addressController = TextEditingController();

  final _dobController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  late DateTime _selectedDate;
  late String _selectedGender;

  UpdateProfilePage({Key? key}) : super(key: key);

  Future<void> _loadUserData() async {
    AppUser user = await controller.user;
    _firstNameController.text = user.firstName;
    _lastNameController.text = user.lastName;
    _emailController.text = user.email;
    _phoneNumberController.text = user.phoneNumber;
    _addressController.text = user.address!;
    // format dob datetime form user
    _dobController.text =
        "${user.dob!.day}/${user.dob!.month}/${user.dob!.year}";
    _selectedDate = user.dob!;
    _selectedGender = user.gender!;
  }

  @override
  Widget build(BuildContext context) {
    _loadUserData();
    return MainLayoutView(
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(
                    labelText: "First Name",
                    prefixIcon: Icon(Icons.text_fields),
                  ),
                  validator: (value) => controller.validateFirstName(value!),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _lastNameController,
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Icons.text_fields),
                  ),
                  validator: (value) => controller.validateLastName(value!),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (value) => controller.validateEmail(value!),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _phoneNumberController,
                  decoration: const InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                  ),
                  validator: (value) => controller.validatePhoneNumber(value!),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _dobController,
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: "Date of Birth",
                    prefixIcon: const Icon(Icons.calendar_today),
                    suffixIcon: InkWell(
                      onTap: () {
                        DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          // minTime: DateTime(2018, 3, 5),
                          // maxTime: DateTime(2019, 6, 7),
                          onConfirm: (date) {
                            _dobController.text =
                                "${date.day}/${date.month}/${date.year}";
                            _selectedDate = date;
                          },
                          currentTime: DateTime.now(),
                          locale: LocaleType.en,
                        );
                      },
                      child: const Icon(Icons.calendar_today_outlined),
                    ),
                  ),
                  validator: (value) => controller.validateDob(value!),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _addressController,
                  decoration: const InputDecoration(
                    labelText: "Address",
                    prefixIcon: Icon(Icons.pin_drop),
                  ),
                  validator: (value) => controller.validateAddress(value!),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        controller.updateUser(
                          user: AppUser(
                            firstName: _firstNameController.text,
                            lastName: _lastNameController.text,
                            email: _emailController.text,
                            phoneNumber: _phoneNumberController.text,
                            address: _addressController.text,
                            dob: _selectedDate,
                            id: controller.userId,
                          ),
                        );
                      }
                    },
                    child: Text(
                      'Update Profile',
                      style: Get.textTheme.subtitle1
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
