import 'package:http/http.dart';

void main(){
requestData();

}

requestData(){
  String url = "https://gist.githubusercontent.com/nathalialemesg/6251c84dd17b7d0055bb54055b6efa1a/raw/086f74d94e8ac18865311b219587266fd8658716/gistfile1.txt";

 
  print(get(Uri.parse(url)));

  Future<Response> filmes = get(Uri.parse(url));
  print(filmes);

  filmes.then((Response response){
    print(response);
    print(response.body);
  });
}