class Post {
  String username;
  String content;

  Post(this.username, this.content);

  @override
  String toString() => "$username : $content";
}
void main() {
  var posts = [ 
    Post("alice", "Loving Dart!"), 
    Post("bob", "Coding is fun") 
  ];
  posts.forEach((post) => print(post));

  
  // Use an anonymous function to print posts
}
