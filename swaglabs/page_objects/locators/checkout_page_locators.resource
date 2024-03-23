*** Variables ***
${INPUT.FIRSTNAME.TEXTBOX}           id=first-name
${INPUT.LASTNAME.TEXTBOX}            id=last-name
${INPUT.POSTCODE.TEXTBOX}            id=postal-code
${CONTINUE.BUTTON}                   id=continue
${CANCEL.BUTTON}                     id=cancel
${PRODUCT.NAME.TEXT}                 //div[contains(@class,"inventory_item_name") and text()="{product_name}"]
${PRODUCT.QUANTITY.TEXT}             //div[contains(@class,"inventory_item_name") and text()="{product_name}"]/../../..//div[@class="cart_quantity"]
${PRODUCT.PRICE.TEXT}                //div[contains(@class,"inventory_item_name") and text()="{product_name}"]/../..//div[@class="inventory_item_price"]
${SUBTOTAL.TEXT}                     //div[contains(@class,"summary_subtotal_label")]
${VAT.TEXT}                          //div[contains(@class,"summary_tax_label")]
${TOTAL.TEXT}                        //div[contains(@class,"summary_total_label")]
${FINISH.BUTTON}                     id=finish
${CHECKOUT.CANCEL.BUTTON}            id=cancel
${ORDER.COMPLETE.TEXT}               //h2[contains(text(),"Thank you for your order")]
${ORDER.COMPLETE.DETAIL.TEXT}        //div[contains(text(),"Your order has been dispatched, and will arrive just as fast as the pony can get there!")]
${BACK.HOME.BUTTON}                  id=back-to-products