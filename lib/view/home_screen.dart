import 'package:flutter/material.dart';
import 'package:messages_app/model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndext = 0;
  
/* void _onItemTapped (int index){
  setState(() {
    _selectedIndext = index;
  });
}*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     title: Row(
      children: [
        CircleAvatar(
        backgroundColor: Colors.blue,radius: 25,
        child:  CircleAvatar(
        backgroundImage: AssetImage("assets/images/anim.jpg"),
        radius: 22,),),
        const SizedBox(width: 8),
        Text("Chats",
        style: TextStyle(fontSize: 32,
        fontWeight: FontWeight.bold),),
      ],
     ),
     actions: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(Icons.camera_alt),
      ),
      Icon(Icons.note_alt),
     ],
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
        child: Container(
          height: 50,
          width: double.infinity,
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 216, 216, 216),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search,size: 30,),
            ),
            
            Text("Search",style: TextStyle(fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.bold),),
          ],),
        ),
        ),
        SliverToBoxAdapter(
         child: SizedBox(
          height: 100,
           child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   shrinkWrap: true,
                   itemCount: uesrs.length,
                   itemBuilder: (context, index) => 
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                     backgroundColor: Colors.blue,radius: 40,
                     child:  CircleAvatar(
                     backgroundImage: AssetImage(uesrs[index].image),
                     radius: 35,),),
                   ),
           ),
         ),
        ),
        SliverToBoxAdapter(
         child: SizedBox(
          width: double.infinity,
           child: ListView.builder(
                   scrollDirection: Axis.vertical,
                   shrinkWrap: true,
                   itemCount: uesrs.length,
                   itemBuilder: (context, index) => 
                   ListTile(
                    leading:  CircleAvatar(
                    backgroundImage: AssetImage(uesrs[index].image),
                    radius: 35,),
                   title: Text(uesrs[index].titel,
                   style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                   subtitle: Text(uesrs[index].subTitel,
                   style: TextStyle(fontSize: 16,color: Colors.grey),
                   ),
                   trailing: Icon(Icons.check_circle_outline),
                   ),
           ),
         ),
        )
      ],),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.message),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: ""),
      ],
      currentIndex: _selectedIndext,
      selectedItemColor: Colors.blue,
      )
    );
  }
}