
let totalPrice1 = 0;
var ptitle="";


function add_to_cart(pid, pname, price)
{
    //let cart- is basically an array but in the form of string 
    let cart = localStorage.getItem("cart");
    // for the first time cart will be empty so it will return null 
    if (cart == null)
    {
        console.log("product is added for the first time");

        // we have created an array off products
        let products = [];
        // here with the help of key value pair we are passing the value to a variable
        let product = {productId: pid, productName: pname, productQuantity: 1, productPrice: price}
        // in the array we are pushing the values 
        products.push(product);

        // here in setItem function we usually pass key value pair
        //here key is cart and value is Json.stringify(products)
        // here JSON.stringify signifies we are converting the array products into string
        //and storing to the key - cart
        localStorage.setItem("cart", JSON.stringify(products));


    } else
    {
        // cart is already present
        console.log("cart is already present");

        //parse() is used for parsing data that was received as JSON; 
        //it deserializes a JSON string into a JavaScript object. JSON.
        // stringify() on the other hand is used to create a JSON string out of an object or array;
        //  it serializes a JavaScript object into a JSON string.
        //here the pcart will act like an array of object
        let pcart = JSON.parse(cart);
        // here pcart.find((item)) - this function will take one one item from the pcart(array)
        // here tem.productId==pid - this will check every item pid with the previous pid 
        // and it will return  value true or false value 
        // and we are storing that value in old product
        let oldProduct = pcart.find((item) => item.productId == pid)

        if (oldProduct)
        {
            // if the oldproduct is true that means we have got the 
            //previosly added product one more time 
            //so we will simply increase the quantity of that product

            console.log("quantity is increased");

            // increasing the quantity of old product
            oldProduct.productQuantity = oldProduct.productQuantity + 1;

            // this function will traverse all the items and will give one one item
            pcart.map((item) => {
                // here the condition is when the id will match with the id of old product
                if (item.productId == oldProduct.productId)
                {
                    // we are updating the value of quantity of that specific product 
                    //into our array of items
                    item.productQuantity = oldProduct.productQuantity;
                }

            })
            // now we are updating the cart
            localStorage.setItem("cart", JSON.stringify(pcart));
        } else {
            // we have not got the oldproduct so we will simply add the product
            // by simply pushing the elements

            console.log("product is added at cart");

            let product = {productId: pid, productName: pname, productQuantity: 1, productPrice: price}
            pcart.push(product);
            localStorage.setItem("cart", JSON.stringify(pcart));

        }

    }
    updateCart();

}

//update cart
// this function will help us to display the  cart items in the cart modal
function updateCart()
{
    // we will take out our cart from localStorage with the help of getItem() and pass the key that is - cart  
    // this cart will be stored in the form of string named cartString 
    let cartString = localStorage.getItem("cart");
    // we will convert thid cartString into object with the help of JSON.parse()
    let cart = JSON.parse(cartString);
    //now variable  cart will now act as object
    if (cart == null || cart.length == 0)
    {
        console.log("cart is empty");

        // here cart-items is the class we have given in cart module
        //when the cart is empty it will set the class cart-items to 0
        $(".cart-items").html("( 0 )");
        // in modal body it will execute in cart-body 
        $(".cart-body").html("<h3> Cart does not have any item</h3>");

        // when nothing is there in the cart we will set the button - PlaceOrder-btn as disabled 
        $(".PlaceOrder-btn").attr('disabled', true);
    } else
    {

        // there is something in the cart to show
        // here we have used backtiks
        //Backticks are commonly used for multi-line strings or 
        //when you want to interpolate an expression within your string.
        // it only increases the quantity
        $(".cart-items").html(`( ${cart.length} )`);

        // now we will traverse all the items in the cart using a variable named table
        // for making table we will use backtik for placing the multiline string
        //Backticks aka “template literals” aka “template strings” aka “fancy strings” ,
        // Template literals are string literals allowing embedded expressions. 
        //You can use multi-line strings and string interpolation features with them.

        let table = `
            <table class='table'>
            <thead class='thead light'>
            <tr>
                 <th>ItemName</th>
                 <th>Quantity</th>
                 <th>Price</th>
                 <th>Total Price</th>
                 <th>Action</th>
            </tr>
            </thead>
                    `;
        // backtik close
        // table variable will simply store all the items in the table

          let totalPrice = 0;

        // now we will traverse one by one items from cart wit the 
        // help of map function 
        cart.map((item) => {

            //basically we are appending the string in table   
            table += `
            <tr>
                 <td>${item.productName}   </td>
                 <td>${item.productQuantity} </td>
                 <td> ${item.productPrice} </td>
                 <td>${item.productQuantity * item.productPrice} </td>
            
            
                 <td><button type ='button' onclick="DeleteItemFromCart('${item.productId}')"   class='btn btn-danger btn-sm'>Remove</button></td>          
              </tr>
                    `;

            // we have created a button remove it will remove the item with th referecne of prodcutId
            // here we are calculating the total price
          ptitle+="Product Name : "+item.productName+" - Product Quantity : "+item.productQuantity+"  ";
            totalPrice += item.productQuantity * item.productPrice;
            totalPrice1 =totalPrice;
            
        })
        //  window.location.replace("PlaceOrder.jsp?totalPrice="+totalPrice);

        // at last we are executing the total price 
        table = table + `
           <tr><td colspan='5' class='text-right font-weight-bold m-5'>Total Price : ${totalPrice}</td></tr>
           </table>`;

        // displaying all the items in cart-body in modal
        $(".cart-body").html(table);
        
        // now the  button (PlaceOrder-btn) will be enabled as we are having the 
        //items in the cart
        $(".PlaceOrder-btn").attr('disabled', false);

    }
}


// deletion of the product with referecne to the productId of that product

function DeleteItemFromCart(pid)
{

    console.log("delete");
    showToast("Product deleted from cart");

    // let cartString = localStorage.getItem("cart");
    // we will convert thid cartString into object with the help of JSON.parse()
    //  let cart = JSON.parse(cartString);


    // it will directly convert string to object

    let cart = JSON.parse(localStorage.getItem("cart"));

    //The filter() method creates an array filled with all array elements that pass a test
    //it will check which pid matches with the pid provided to remove from cart
    // when it will get then it will  delete that item and then the filtered 
    // items will be stored in the varable newcart

    let newcart = cart.filter((item) => item.productId != pid);

    // now we will update the cart (key) in our local storage
    // JSON.stringify(newcart) will convert it into a string and store it inot the key that is cart

    localStorage.setItem('cart', JSON.stringify(newcart));
    updateCart();

}


// we will call the updatecart function only when the jquery is ready 
// it means when document is ready then it will call the function update cart
$(document).ready(function () {

    updateCart();

});

function  showToast(content)
{

    $("#toast").addClass("display");
    $("#toast").html(content);
    setTimeout(() => {
        $("#toast").removeClass("display");
    }, 3000);
}

function GoToPlaceOrder()
{
    // window.location="PlaceOrder.jsp";
    //window.location.replace("PlaceOrder.jsp?totalPrice=" + totalPrice+"&ptitle="+ptitle);
    var a="PlaceOrder.jsp?totalPrice="+totalPrice1+"&ptitle="+ptitle;
    window.open(a);
}



