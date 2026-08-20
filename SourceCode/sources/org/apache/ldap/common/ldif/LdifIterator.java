package org.apache.ldap.common.ldif;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class LdifIterator implements Iterator {
    private static final boolean DEBUG = false;
    private StringBuffer buf;
    private BufferedReader in;
    private LdifIteratorMonitor monitor;
    private String prefetched;

    public LdifIterator(InputStream inputStream) throws IOException {
        this(new InputStreamReader(inputStream));
        if (inputStream == null) {
            throw new NullPointerException("InputStream cannot be null!");
        }
    }

    public LdifIterator(Reader reader) throws IOException {
        this.prefetched = null;
        this.monitor = new LdifIteratorMonitorAdapter();
        this.in = null;
        this.buf = new StringBuffer();
        if (reader == null) {
            throw new NullPointerException("Reader cannot be null!");
        }
        this.in = new BufferedReader(reader);
        debug("<init>: -- opended file");
        prefetch();
        debug("<init>: -- prefetch complete");
    }

    public LdifIterator(InputStream inputStream, LdifIteratorMonitor ldifIteratorMonitor) throws IOException {
        this(new InputStreamReader(inputStream), ldifIteratorMonitor);
        if (inputStream == null) {
            throw new NullPointerException("InputStream cannot be null!");
        }
    }

    public LdifIterator(Reader reader, LdifIteratorMonitor ldifIteratorMonitor) throws IOException {
        this(reader);
        if (ldifIteratorMonitor != null) {
            this.monitor = ldifIteratorMonitor;
        }
        if (reader == null) {
            throw new NullPointerException("Reader cannot be null!");
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.prefetched != null;
    }

    @Override // java.util.Iterator
    public Object next() {
        String str = this.prefetched;
        try {
            debug("next(): -- called");
            prefetch();
        } catch (IOException e2) {
            error("Premature termination of LDIF iterator due to underlying stream error", e2);
        }
        return str;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    private void error(String str, Throwable th) {
        this.monitor.fatalFailure(str, th);
    }

    private void debug(String str) {
        this.monitor.infoAvailable(str);
    }

    private void prefetch() throws IOException {
        String readLine;
        boolean z = false;
        while (true) {
            readLine = this.in.readLine();
            if (readLine == null) {
                break;
            }
            debug(new StringBuffer("readLine(): ").append(readLine).toString());
            readLine = filterComment(readLine).trim();
            if (z) {
                if (readLine.equals("")) {
                    break;
                }
                debug("prefetch(): -- appending last line to buffer");
                this.buf.append(readLine).append('\n');
            } else if (!readLine.equals("")) {
                debug("prefetch(): -- appending last line to buffer");
                this.buf.append(readLine).append('\n');
                z = true;
            }
        }
        if (readLine == null && this.buf.length() == 0) {
            debug("prefetch(): -- line was null and buffer was empty");
            debug("prefetch(): -- iterator has been consumed");
            this.prefetched = null;
        } else {
            debug("prefetch(): -- LDIF prefetched and set as next");
            this.prefetched = this.buf.toString();
        }
        this.buf.setLength(0);
        debug("prefetch(): -- LDIF buffer cleared");
    }

    public static String filterComment(String str) {
        int indexOf = str.indexOf(35);
        if (-1 == indexOf) {
            return str;
        }
        if (indexOf == 0) {
            return "";
        }
        while (-1 != indexOf) {
            int i = indexOf - 1;
            if (i > 0 && '\\' == str.charAt(i)) {
                int i2 = indexOf + 1;
                if (i2 >= str.length()) {
                    return str;
                }
                indexOf = str.indexOf(35, i2);
            } else {
                return str.substring(0, indexOf);
            }
        }
        return str;
    }
}
