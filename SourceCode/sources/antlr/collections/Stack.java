package antlr.collections;

import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public interface Stack {
    int height();

    Object pop() throws NoSuchElementException;

    void push(Object obj);

    Object top() throws NoSuchElementException;
}
