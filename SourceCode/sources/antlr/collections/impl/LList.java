package antlr.collections.impl;

import antlr.collections.List;
import antlr.collections.Stack;
import java.util.Enumeration;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class LList implements List, Stack {
    protected LLCell head = null;
    protected LLCell tail = null;
    protected int length = 0;

    @Override // antlr.collections.List
    public void add(Object obj) {
        append(obj);
    }

    @Override // antlr.collections.List
    public void append(Object obj) {
        LLCell lLCell = new LLCell(obj);
        if (this.length == 0) {
            this.tail = lLCell;
            this.head = lLCell;
            this.length = 1;
            return;
        }
        this.tail.next = lLCell;
        this.tail = lLCell;
        this.length++;
    }

    protected Object deleteHead() throws NoSuchElementException {
        LLCell lLCell = this.head;
        if (lLCell == null) {
            throw new NoSuchElementException();
        }
        Object obj = lLCell.data;
        this.head = this.head.next;
        this.length--;
        return obj;
    }

    @Override // antlr.collections.List
    public Object elementAt(int i) throws NoSuchElementException {
        int i2 = 0;
        for (LLCell lLCell = this.head; lLCell != null; lLCell = lLCell.next) {
            if (i != i2) {
                i2++;
            } else {
                return lLCell.data;
            }
        }
        throw new NoSuchElementException();
    }

    @Override // antlr.collections.List
    public Enumeration elements() {
        return new LLEnumeration(this);
    }

    @Override // antlr.collections.Stack
    public int height() {
        return this.length;
    }

    @Override // antlr.collections.List
    public boolean includes(Object obj) {
        for (LLCell lLCell = this.head; lLCell != null; lLCell = lLCell.next) {
            if (lLCell.data.equals(obj)) {
                return true;
            }
        }
        return false;
    }

    protected void insertHead(Object obj) {
        LLCell lLCell = this.head;
        LLCell lLCell2 = new LLCell(obj);
        this.head = lLCell2;
        lLCell2.next = lLCell;
        this.length++;
        if (this.tail == null) {
            this.tail = this.head;
        }
    }

    @Override // antlr.collections.List
    public int length() {
        return this.length;
    }

    @Override // antlr.collections.Stack
    public Object pop() throws NoSuchElementException {
        return deleteHead();
    }

    @Override // antlr.collections.Stack
    public void push(Object obj) {
        insertHead(obj);
    }

    @Override // antlr.collections.Stack
    public Object top() throws NoSuchElementException {
        LLCell lLCell = this.head;
        if (lLCell == null) {
            throw new NoSuchElementException();
        }
        return lLCell.data;
    }
}
