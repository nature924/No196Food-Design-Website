package com.food.foodweb.model;

import lombok.*;

/**
 * @author meiko
 */

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Food {
    private String name;
    private String img;
    private String way;
    private String time;
    private String type;
    private String pop;
    private String culture;
    private String step;
}
