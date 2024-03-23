*** Keywords ***
Check all sort by and click to select
    ${sort_by_list}=                                    BuiltIn.Create list            ${sort_by["name_z-a"]}    ${sort_by["name_a-z"]}    ${sort_by["price_l-h"]}   ${sort_by["price_h-l"]}
    ${count_sort_by_list}=                              BuiltIn.Get length             ${sort_by_list}
    FOR     ${i}    IN RANGE        ${count_sort_by_list}
        product_list_page.Click to select sort by  ${sort_by_list[${i}]}
    END