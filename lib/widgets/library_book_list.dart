import 'package:library_book/main.dart';

class LibraryBookList extends StatelessWidget {
  final int index;
  const LibraryBookList({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  DetailBookPage(index: index)),
        );
      },
      child: Card(
        elevation: 7,
        margin: const EdgeInsets.fromLTRB(6, 13, 10, 13),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                width: 87,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.network(
                    bookUrl[index],
                    fit: BoxFit.cover,
                    width: 90,
                    height: 130,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 145,
                      child: Text(
                        bookTitle[index],
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: accentColor,
                              fontSize: 16,
                            ),
                      ),
                    ),
                    SizedBox(
                      width: 145,
                      child: Text(
                        author[index],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text('${totalOfPages[index]} Halaman')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
