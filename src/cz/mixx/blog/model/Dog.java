package cz.mixx.blog.model;


/**
 * Dog entity class
 */
public class Dog
{
    private String name;


    public Dog(String name)
    {
        this.name = name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
}