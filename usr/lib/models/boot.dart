class Boot {
  final String id;
  final String name;
  final String brand;
  final double price;
  final String imageUrl;
  final List<String> fitTags;

  const Boot({
    required this.id,
    required this.name,
    required this.brand,
    required this.price,
    required this.imageUrl,
    required this.fitTags,
  });
}

// Mock database of football boots with different fit profiles
final List<Boot> mockBoots = [
  const Boot(
    id: '1',
    name: 'Predator Elite',
    brand: 'Adidas',
    price: 250.0,
    imageUrl: 'https://images.unsplash.com/photo-1511886929837-354d827aae26?auto=format&fit=crop&w=500&q=80',
    fitTags: ['Wide', 'Flat'],
  ),
  const Boot(
    id: '2',
    name: 'Mercurial Vapor',
    brand: 'Nike',
    price: 240.0,
    imageUrl: 'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?auto=format&fit=crop&w=500&q=80',
    fitTags: ['Narrow', 'High Arch'],
  ),
  const Boot(
    id: '3',
    name: 'Future Ultimate',
    brand: 'Puma',
    price: 220.0,
    imageUrl: 'https://images.unsplash.com/photo-1579952363873-27f3bade9f55?auto=format&fit=crop&w=500&q=80',
    fitTags: ['Regular', 'Mid Arch'],
  ),
  const Boot(
    id: '4',
    name: 'Copa Mundial',
    brand: 'Adidas',
    price: 180.0,
    imageUrl: 'https://images.unsplash.com/photo-1614631446501-abcf76949eca?auto=format&fit=crop&w=500&q=80',
    fitTags: ['Wide', 'Mid Arch'],
  ),
];
