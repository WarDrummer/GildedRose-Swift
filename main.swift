import Foundation

print("OMGHAI!")

var items: [Item] = [
    Item (name: "+5 Dexterity Vest", sellIn: 10, quality: 20),
    Item (name: "Aged Brie", sellIn: 2, quality: 0),
    Item (name: "Elixir of the Mongoose", sellIn: 5, quality: 7),
    Item (name: "Sulfuras, Hand of Ragnaros", sellIn: 0, quality: 80),
    Item (name: "Sulfuras, Hand of Ragnaros", sellIn: -1, quality: 80),
    Item (name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 15, quality: 20),
    Item (name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 49),
    Item (name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 5, quality: 49),
    Item (name: "Conjured Mana Cake", sellIn: 3, quality: 6) ]


var app = GildedRose(items: items)


for i in 0 ..< 31
{
    print("-------- day \(i) --------")
    print("name, sellIn, quality")
    for j in 0 ..< items.count
    {
        print("\(items[j].name), \(items[j].sellIn), \(items[j].quality)")
    }
    print("")
    app.updateQuality()
}
