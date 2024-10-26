package com.food.foodweb.model;

import lombok.*;

/**
 * @author meiko
 */

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class OrderedFood {
    private String user_name;
    private String food_name;
    private String date;
}
