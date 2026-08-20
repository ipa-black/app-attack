package org.apache.ldap.common;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class RuntimeMultiException extends RuntimeException {
    private Collection m_nestedExceptions;

    public RuntimeMultiException() {
        this.m_nestedExceptions = new ArrayList();
    }

    public RuntimeMultiException(String str) {
        super(str);
        this.m_nestedExceptions = new ArrayList();
    }

    public Iterator listNestedExceptions() {
        return this.m_nestedExceptions.iterator();
    }

    public int size() {
        return this.m_nestedExceptions.size();
    }

    public boolean isEmpty() {
        return this.m_nestedExceptions.isEmpty();
    }

    public void addThrowable(Throwable th) {
        this.m_nestedExceptions.add(th);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        printWriter.println("Nested exceptions to follow:\n");
        Iterator listNestedExceptions = listNestedExceptions();
        while (listNestedExceptions.hasNext()) {
            ((Throwable) listNestedExceptions.next()).printStackTrace();
            if (listNestedExceptions.hasNext()) {
                printWriter.println("\n\t<<========= Next Nested Exception ========>>\n");
            } else {
                printWriter.println("\n\t<<========= Last Nested Exception ========>>\n");
            }
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        printStream.println("Nested exceptions to follow:\n");
        Iterator listNestedExceptions = listNestedExceptions();
        while (listNestedExceptions.hasNext()) {
            ((Throwable) listNestedExceptions.next()).printStackTrace();
            if (listNestedExceptions.hasNext()) {
                printStream.println("\n\t<<========= Next Nested Exception ========>>\n");
            } else {
                printStream.println("\n\t<<========= Last Nested Exception ========>>\n");
            }
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }
}
