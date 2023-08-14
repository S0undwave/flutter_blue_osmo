// import 'package:flutter/material.dart';
// // ignore_for_file: avoid_print, unused_element, unused_import
// import 'dart:io';

// import 'package:langchain/langchain.dart';
// import 'package:langchain_openai/langchain_openai.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);  

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);


//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   String textAI = "";
//   var chain = null;

//   @override
//   void initState() {
//     super.initState();
//     // TODO: implement initState
    
//         final openaiApiKey = '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';
//         final openai = OpenAI(apiKey: openaiApiKey, temperature: 0);

//         // var memory = ConversationBufferMemory(
//         //   returnMessages: true,
//         //   memoryKey: 'history'
//         // );
//         //  chain = ConversationChain(
//         //   llm: openai, 
//         //   memory: memory,          
//         //   );
         
//         String text = "Groopy adalah aplikasi untuk mengurangi user melakukan claim asuransi, jika tidak melakukan claim asuransi user mendapatkan poin perbulan yang bisa ditukarkan dengan item menarik di aplikasi groopy.";//File("assets/state_of_the_union.txt").readAsStringSync();
//         const textSplitter = RecursiveCharacterTextSplitter();
//         var docs =  textSplitter.createDocuments([text]);
//         // Create a vector store from the documents.
//         try {
//            VectorStore vectorStore = VectorStore.fromDocuments(documents: docs, embeddings: OpenAIEmbeddings(apiKey: openaiApiKey));
//           // Initialize a retriever wrapper around the vector store
//           var vectorStoreRetriever = vectorStore.asRetriever();
          
//           chain = RetrievalQAChain.fromLlm(llm: openai, retriever: vectorStoreRetriever);
//         } catch (e) {
//           print(e);
//         }
        
//   }

//   TextEditingController _controller = TextEditingController();

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//     // _example3();
//     print('-----------------------');
//     // _example2();
//   }

//   Future<String> readFile() async {
//   // try {
//   //   Directory directory = await getApplicationDocumentsDirectory();
//   //   File file = File('${directory.path}/nama_file.txt');
//   //   String contents = await file.readAsString();
//   //   return contents;
//   // } catch (e) {
//   //   print("Gagal membaca file: $e");
//     return "";
//   // }
// }

//   // @override
//   // Future<void> initState() async {
//   //   super.initState();
//   //     final llm = FakeListLLM(
//   //       responses: [
//   //         'Why did the AI go on a diet? Because it had too many bytes!', 
//   //         'AI adalah saya'
//   //       ],
//   //     );
//   //     final promptTemplate = PromptTemplate.fromTemplate(
//   //       'siapa {subject}',
//   //     );
//   //     final prompt = promptTemplate.format({'subject': 'AI'});
//   //     final result = await llm(prompt);
//   //     print(result);
//   // }

//   /// The most basic building block of LangChain is calling an LLM on some input.
// Future<void> _example1() async {
//   final openaiApiKey = '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';
//   final openai = OpenAI(apiKey: openaiApiKey, temperature: 0.9);
//   final result = await openai.predict('What would be a good company name for a company that makes colorful socks?');
//   print(result);
// }

// Future<void> _example3(String e) async {

//   var result = await chain.call(e);
//   print(result);
//   // setState(() {
//   //   textAI = result;
//   // });

// }

// /// The most frequent use case is to create a chat-bot.
// /// This is the most basic one.
// Future<void> _example2() async {
//   // final openaiApiKey = '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';
//   // final chat = ChatOpenAI(apiKey: openaiApiKey, temperature: 0);

//   // // while (true) {
//   // //   stdout.write('> saya adalah kucing');
//   //   final usrMsg = ChatMessage.human('groopy adalah');
//   //   final aiMsg = await chat([usrMsg]);
//   //   print(aiMsg);
//   // }
// }

//   Future test () async{
//     //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
//     // final agent = AgentAction(tool: tool, toolInput: toolInput)
//     // final llm = FakeListLLM(
//     //     responses: [
//     //       'Why did the go on a diet? Because it had too many bytes!', 
//     //       'AI is me'
//     //     ],
//     //   );
//     //   final promptTemplate = PromptTemplate.fromTemplate(
//     //     'who is {subject}',
//     //   );
//     //   final prompt = promptTemplate.format({'subject': 'AI'});
//     //   final result = await llm(prompt);
//     //   print(result);
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               controller: _controller,
//               decoration: InputDecoration(
//                 labelText: 'Masukkan teks',
//                 hintText: 'Contoh: Halo dunia',
//               ),
//               onSubmitted: (e){
//                 _example3(e);
//               },
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
