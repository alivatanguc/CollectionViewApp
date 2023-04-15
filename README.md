# CollectionViewApp



This code is a sample implementation of a UICollectionView in iOS using Swift programming language. It displays a list of films with their names, images, and prices. The films are represented by the Films class, which has four properties: filmId, filmName, filmImage, and price. The FilmCell class represents the cell of the collection view, and it has three UILabel and one UIImageView.

The UICollectionView is designed programmatically, and the cell size is calculated according to the screen size. UICollectionViewDelegate, UICollectionViewDataSource, and FilmCellProtocol protocols are implemented in the ViewController class extension. The FilmCellProtocol protocol is created to notify the view controller when the "Buy" button is clicked in the cell.

When the ViewDidLoad function is called, six film objects are created and added to the FilmList array. numberOfSections, numberOfItemsInSection, and cellForItemAt functions are implemented to configure the collection view. In the cellForItemAt function, the properties of the Films object are assigned to the corresponding labels and image view of the FilmCell.

The ClickButton function is called when the "Buy" button is clicked, and it prints the selected film's name to the console.
