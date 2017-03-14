import Foundation

public class GildedRose
{
    var items: [Item]
    
    init(items: [Item])
    {
        self.items = items;
    }
    
    public func updateQuality()
    {
        for i in 0 ..< items.count
        {
            if (items[i].name != "Aged Brie" && items[i].name != "Backstage passes to a TAFKAL80ETC concert")
            {
                if (items[i].quality > 0)
                {
                    if (items[i].name != "Sulfuras, Hand of Ragnaros")
                    {
                        items[i].quality = items[i].quality - 1;
                    }
                }
            }
            else
            {
                if (items[i].quality < 50)
                {
                    items[i].quality = items[i].quality + 1;
                    
                    if (items[i].name == "Backstage passes to a TAFKAL80ETC concert")
                    {
                        if (items[i].sellIn < 11)
                        {
                            if (items[i].quality < 50)
                            {
                                items[i].quality = items[i].quality + 1;
                            }
                        }
                        
                        if (items[i].sellIn < 6)
                        {
                            if (items[i].quality < 50)
                            {
                                items[i].quality = items[i].quality + 1;
                            }
                        }
                    }
                }
            }
            
            if (items[i].name != "Sulfuras, Hand of Ragnaros")
            {
                items[i].sellIn = items[i].sellIn - 1;
            }
            
            if (items[i].sellIn < 0)
            {
                if (items[i].name != "Aged Brie")
                {
                    if (items[i].name != "Backstage passes to a TAFKAL80ETC concert")
                    {
                        if (items[i].quality > 0)
                        {
                            if (items[i].name != "Sulfuras, Hand of Ragnaros")
                            {
                                items[i].quality = items[i].quality - 1;
                            }
                        }
                    }
                    else
                    {
                        items[i].quality = items[i].quality - items[i].quality;
                    }
                }
                else
                {
                    if (items[i].quality < 50)
                    {
                        items[i].quality = items[i].quality + 1;
                    }
                }
            }
        }
    }
}

public class Item {
    public var name: String = ""
    public var sellIn: Int = 0
    public var quality: Int = 0
    
    init(name: String, sellIn: Int, quality: Int){
        self.name = name
        self.sellIn = sellIn
        self.quality = quality
    }
}

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
