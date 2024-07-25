import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../legacy/custom_colors.dart';
import '../../login/inputs/email.dart';
import '../../login/inputs/name.dart';
import '../bloc/profile_bloc.dart';

class AccountInformation extends StatefulWidget {
  const AccountInformation({
    super.key,
  });

  @override
  State<AccountInformation> createState() => _AccountInformationState();
}

class _AccountInformationState extends State<AccountInformation> {
  ValueNotifier<bool> isEditing = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return ExpansionTile(
            title: Text("Account Information",
                style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: CustomColors.anxiousTeal_0)),
            iconColor: CustomColors.anxiousTeal_0,
            collapsedIconColor: CustomColors.anxiousTeal_0,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ValueListenableBuilder(
                  builder: (context, editing, widget) {
                    return Column(
                      children: [
                        !editing
                            ? _ReadOnlyAccountInformation(isEditing)
                            : _AccountInformationEditor(isEditing),
                      ],
                    );
                  },
                  valueListenable: isEditing,
                ),
              )
            ]);
      },
    );
  }
}

class _AccountInformationEditor extends StatefulWidget {
  final ValueNotifier<bool> isEditing;

  const _AccountInformationEditor(this.isEditing);

  @override
  State<_AccountInformationEditor> createState() =>
      _AccountInformationEditorState();
}

class _AccountInformationEditorState extends State<_AccountInformationEditor> {
  late _AccountInformationFormState _formState;
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  final _formKey = GlobalKey<FormState>();

  void _onNameChanged() {
    setState(() {
      _formState = _formState.copyWith(name: Name.dirty(_nameController.text));
    });
  }

  void _onEmailChanged() {
    setState(() {
      _formState =
          _formState.copyWith(email: Email.dirty(_emailController.text));
    });
  }

  @override
  void initState() {
    super.initState();
    var bloc = context.read<ProfileBloc>();
    _formState = _AccountInformationFormState(
      email: Email.dirty(bloc.state.email ?? ""),
      name: Name.dirty(bloc.state.name ?? ""),
    );
    _nameController = TextEditingController(text: bloc.state.name)
      ..addListener(_onNameChanged);
    _emailController = TextEditingController(text: bloc.state.email)
      ..addListener(_onEmailChanged);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                validator: (_) => _formState.name.isNotValid
                    ? "Name ${_formState.name.errorText}"
                    : null,
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  color: CustomColors.white,
                ),
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: GoogleFonts.openSans(
                    fontSize: 17,
                    color: CustomColors.gray4,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: CustomColors.gray4,
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: CustomColors.gray4,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                validator: (_) => _formState.email.isNotValid
                    ? "Email ${_formState.email.errorText}"
                    : null,
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  color: CustomColors.white,
                ),
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: GoogleFonts.openSans(
                    fontSize: 17,
                    color: CustomColors.gray4,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: CustomColors.gray4,
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: CustomColors.gray4,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const Spacer(),
                  TextButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                      )),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<ProfileBloc>().add(
                              ProfileEvent.accountInformationUpdated(
                                  name: _formState.name.value,
                                  email: _formState.email.value));
                          widget.isEditing.value = !widget.isEditing.value;
                        }
                      },
                      child: Text("Save",
                          style: GoogleFonts.openSans(
                            fontSize: 17,
                          )))
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _AccountInformationFormState with FormzMixin {
  final Email email;
  final Name name;

  _AccountInformationFormState({
    this.email = const Email.pure(),
    this.name = const Name.pure(),
  });

  _AccountInformationFormState copyWith({
    Email? email,
    Name? name,
  }) {
    return _AccountInformationFormState(
      email: email ?? this.email,
      name: name ?? this.name,
    );
  }

  @override
  List<FormzInput> get inputs => [email, name];
}

class _ReadOnlyAccountInformation extends StatelessWidget {
  final ValueNotifier<bool> isEditing;

  const _ReadOnlyAccountInformation(this.isEditing);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                "Name",
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              context.read<ProfileBloc>().state.name ?? "",
              style: GoogleFonts.openSans(
                fontSize: 17,
                color: Colors.white,
              ),
            )
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: Text(
                "Email",
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              context.read<ProfileBloc>().state.email ?? "",
              style: GoogleFonts.openSans(
                fontSize: 17,
                color: Colors.white,
              ),
            )
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            const Spacer(),
            TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                )),
                onPressed: () {
                  isEditing.value = !isEditing.value;
                },
                child: Text("Edit",
                    style: GoogleFonts.openSans(
                      fontSize: 17,
                    )))
          ],
        ),
      ],
    );
  }
}
