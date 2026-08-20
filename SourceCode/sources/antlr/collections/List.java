package antlr.collections;

import java.util.Enumeration;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public interface List {
    void add(Object obj);

    void append(Object obj);

    Object elementAt(int i) throws NoSuchElementException;

    Enumeration elements();

    boolean includes(Object obj);

    int length();
}
