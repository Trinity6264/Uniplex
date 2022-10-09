import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uniplex/view_model/dashboard/tickets/tickets_view_model.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TicketViewModel>.reactive(
      viewModelBuilder: () => TicketViewModel(),
      builder: (context, model, child) => Scaffold(),
    );
  }
}
