import 'package:flutter/material.dart';
import 'package:maan_hrm/Screens/Client%20Management/client_details.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../constant.dart';
import 'add_client.dart';

class ClientList extends StatefulWidget {
  const ClientList({Key? key}) : super(key: key);

  @override
  _ClientListState createState() => _ClientListState();
}

class _ClientListState extends State<ClientList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const AddClient().launch(context);
        },
        backgroundColor: kMainColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: kMainColor,
      appBar: AppBar(
        backgroundColor: kMainColor,
        elevation: 0.0,
        titleSpacing: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Client List',
          maxLines: 2,
          style: kTextStyle.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Image(
            image: AssetImage('images/employeesearch.png'),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Container(
              width: context.width(),
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: kGreyTextColor.withOpacity(0.5)),
                    ),
                    child: ListTile(
                      onTap: (){
                        const ClientDetails().launch(context);
                      },
                      leading: Image.asset('images/emp1.png'),
                      title: Text('Sahidul islam',style: kTextStyle,),
                      subtitle:  Text('Designer',style: kTextStyle.copyWith(color: kGreyTextColor),),
                      trailing: const Icon(Icons.arrow_forward_ios,color: kGreyTextColor,),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: kGreyTextColor.withOpacity(0.5)),
                    ),
                    child: ListTile(
                      onTap: (){
                        const ClientDetails().launch(context);
                      },
                      leading: Image.asset('images/emp2.png'),
                      title: Text('Mehedi Mohammad',style: kTextStyle,),
                      subtitle:  Text('Manager',style: kTextStyle.copyWith(color: kGreyTextColor),),
                      trailing: const Icon(Icons.arrow_forward_ios,color: kGreyTextColor,),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: kGreyTextColor.withOpacity(0.5)),
                    ),
                    child: ListTile(
                      onTap: (){
                        const ClientDetails().launch(context);
                      },
                      leading: Image.asset('images/emp3.png'),
                      title: Text('Ibne Riead',style: kTextStyle,),
                      subtitle:  Text('Developer',style: kTextStyle.copyWith(color: kGreyTextColor),),
                      trailing: const Icon(Icons.arrow_forward_ios,color: kGreyTextColor,),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: kGreyTextColor.withOpacity(0.5)),
                    ),
                    child: ListTile(
                      onTap: (){
                        const ClientDetails().launch(context);
                      },
                      leading: Image.asset('images/emp4.png'),
                      title: Text('Emily Jones',style: kTextStyle,),
                      subtitle:  Text('Officer',style: kTextStyle.copyWith(color: kGreyTextColor),),
                      trailing: const Icon(Icons.arrow_forward_ios,color: kGreyTextColor,),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
