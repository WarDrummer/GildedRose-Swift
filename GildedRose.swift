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
		for (var i = 0; i < items.count; i++)
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