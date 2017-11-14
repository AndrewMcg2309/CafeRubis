void setup()
{
  size(800, 600);
  
  loadData();
  printProducts();
  displayMenu();
  displayProducts();
  drawBox_Line();
  drawHeading();
  
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

float border = 40;

void loadData()
{
  Table table = loadTable("cafe.csv", "header");
  for(TableRow row:table.rows())
  {
    Product product = new Product(row);    
    products.add(product);
  }
}


void printProducts()
{
  for(Product product:products)
  {
    println(product);
  }
}

void displayMenu()
{
  noFill();
  
  int y1 = height / 9;
  
  for(int i = -3 ; i < 4; i ++)
  {
    fill(255);
    rect(border, y1, width /3.5, 60);
    y1 = y1 + 70;
  }
    
}

void displayProducts()
{
  int x = width / 13;
  int y = height / 9;
  
  for(Product product:products)
    {
      stroke(0);
      fill(0);
      textSize(13);
      text(product.name, x, y + 33);
      y = y + 70;
    }
    
    int y2 = height / 9;
    for(Product product:products)
    {
      stroke(0);
      fill(0);
      textSize(13);
      
      //nf(product.price = 2);
      text(product.price, x * 3.5 , y2 + 33);
      y2 = y2 + 70;
    }
}



void draw()
{
}


void drawBox_Line()
{
  fill(255);
  line(width / 2, height / 9, width / 2, (height / 9) * 8);
  
  fill(255);
  rect((width / 2) + border, height / 9, width / 2 - border * 2, (height / 9) * 7);
  
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
  text("Your Bill", (width / 4) * 3, (height / 9) + 30);
}


void drawHeading()
{
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(25);
  text("Cafe Rubis Till System", width / 2, 30);
}


void mousePressed()
{
}