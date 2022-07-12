package com.users.user.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.time.LocalDate;

@Entity
@Table(name = "users")
@Data
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(min = 2, max = 30)
    @Pattern(regexp = "^[A-Za-z]+$")
    private String fullname;

    @Email
    private String email;

    @Min(2)
    private String address;

    @Column(name = "date_of_birth")
    private LocalDate dateOfBirth;
}
