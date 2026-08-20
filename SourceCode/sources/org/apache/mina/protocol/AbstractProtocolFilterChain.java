package org.apache.mina.protocol;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.protocol.ProtocolFilter;
/* loaded from: classes5.dex */
public abstract class AbstractProtocolFilterChain implements ProtocolFilterChain {
    private final Entry head;
    private final Entry tail;
    private final Map name2entry = new HashMap();
    private final Map filter2entry = new IdentityHashMap();

    protected abstract void doWrite(ProtocolSession protocolSession, Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractProtocolFilterChain() {
        Entry entry = new Entry(null, null, TtmlNode.TAG_HEAD, createHeadFilter());
        this.head = entry;
        Entry entry2 = new Entry(entry, null, "tail", createTailFilter());
        this.tail = entry2;
        entry.nextEntry = entry2;
    }

    protected ProtocolFilter createHeadFilter() {
        return new ProtocolFilter() { // from class: org.apache.mina.protocol.AbstractProtocolFilterChain.1
            @Override // org.apache.mina.protocol.ProtocolFilter
            public void sessionOpened(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession) {
                nextFilter.sessionOpened(protocolSession);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void sessionClosed(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession) {
                nextFilter.sessionClosed(protocolSession);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void sessionIdle(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, IdleStatus idleStatus) {
                nextFilter.sessionIdle(protocolSession, idleStatus);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void exceptionCaught(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Throwable th) {
                nextFilter.exceptionCaught(protocolSession, th);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void messageReceived(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
                nextFilter.messageReceived(protocolSession, obj);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void messageSent(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
                nextFilter.messageSent(protocolSession, obj);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void filterWrite(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
                AbstractProtocolFilterChain.this.doWrite(protocolSession, obj);
            }
        };
    }

    protected ProtocolFilter createTailFilter() {
        return new ProtocolFilter() { // from class: org.apache.mina.protocol.AbstractProtocolFilterChain.2
            @Override // org.apache.mina.protocol.ProtocolFilter
            public void sessionOpened(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession) throws Exception {
                protocolSession.getHandler().sessionOpened(protocolSession);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void sessionClosed(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession) throws Exception {
                protocolSession.getHandler().sessionClosed(protocolSession);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void sessionIdle(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, IdleStatus idleStatus) throws Exception {
                protocolSession.getHandler().sessionIdle(protocolSession, idleStatus);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void exceptionCaught(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Throwable th) throws Exception {
                protocolSession.getHandler().exceptionCaught(protocolSession, th);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void messageReceived(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) throws Exception {
                protocolSession.getHandler().messageReceived(protocolSession, obj);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void messageSent(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) throws Exception {
                protocolSession.getHandler().messageSent(protocolSession, obj);
            }

            @Override // org.apache.mina.protocol.ProtocolFilter
            public void filterWrite(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) throws Exception {
                nextFilter.filterWrite(protocolSession, obj);
            }
        };
    }

    @Override // org.apache.mina.protocol.ProtocolFilterChain
    public ProtocolFilter getChild(String str) {
        Entry entry = (Entry) this.name2entry.get(str);
        if (entry == null) {
            return null;
        }
        return entry.filter;
    }

    @Override // org.apache.mina.protocol.ProtocolFilterChain
    public synchronized void addFirst(String str, ProtocolFilter protocolFilter) {
        checkAddable(str);
        register(this.head, str, protocolFilter);
    }

    @Override // org.apache.mina.protocol.ProtocolFilterChain
    public synchronized void addLast(String str, ProtocolFilter protocolFilter) {
        checkAddable(str);
        register(this.tail.prevEntry, str, protocolFilter);
    }

    @Override // org.apache.mina.protocol.ProtocolFilterChain
    public synchronized void addBefore(String str, String str2, ProtocolFilter protocolFilter) {
        Entry checkOldName = checkOldName(str);
        checkAddable(str2);
        register(checkOldName, str2, protocolFilter);
    }

    @Override // org.apache.mina.protocol.ProtocolFilterChain
    public synchronized void addAfter(String str, String str2, ProtocolFilter protocolFilter) {
        Entry checkOldName = checkOldName(str);
        checkAddable(str2);
        register(checkOldName.prevEntry, str2, protocolFilter);
    }

    @Override // org.apache.mina.protocol.ProtocolFilterChain
    public synchronized void remove(String str) {
        Entry checkOldName = checkOldName(str);
        Entry entry = checkOldName.prevEntry;
        Entry entry2 = checkOldName.nextEntry;
        entry.nextEntry = entry2;
        entry2.prevEntry = entry;
        this.name2entry.remove(str);
        this.filter2entry.remove(checkOldName.filter);
    }

    @Override // org.apache.mina.protocol.ProtocolFilterChain
    public synchronized void clear() {
        Iterator it = new ArrayList(this.name2entry.keySet()).iterator();
        while (it.hasNext()) {
            remove((String) it.next());
        }
    }

    private void register(Entry entry, String str, ProtocolFilter protocolFilter) {
        Entry entry2 = new Entry(entry, entry.nextEntry, str, protocolFilter);
        entry.nextEntry.prevEntry = entry2;
        entry.nextEntry = entry2;
        this.name2entry.put(str, entry2);
        this.filter2entry.put(protocolFilter, entry2);
    }

    private Entry checkOldName(String str) {
        Entry entry = (Entry) this.name2entry.get(str);
        if (entry != null) {
            return entry;
        }
        throw new IllegalArgumentException(new StringBuffer("Unknown interceptor name:").append(str).toString());
    }

    private void checkAddable(String str) {
        if (this.name2entry.containsKey(str)) {
            throw new IllegalArgumentException(new StringBuffer("Other interceptor is using name '").append(str).append("'").toString());
        }
    }

    public void sessionOpened(ProtocolSession protocolSession) {
        callNextSessionOpened(this.head, protocolSession);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNextSessionOpened(Entry entry, ProtocolSession protocolSession) {
        try {
            entry.filter.sessionOpened(entry.nextFilter, protocolSession);
        } catch (Throwable th) {
            exceptionCaught(protocolSession, th);
        }
    }

    public void sessionClosed(ProtocolSession protocolSession) {
        callNextSessionClosed(this.head, protocolSession);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNextSessionClosed(Entry entry, ProtocolSession protocolSession) {
        try {
            entry.filter.sessionClosed(entry.nextFilter, protocolSession);
        } catch (Throwable th) {
            exceptionCaught(protocolSession, th);
        }
    }

    public void sessionIdle(ProtocolSession protocolSession, IdleStatus idleStatus) {
        callNextSessionIdle(this.head, protocolSession, idleStatus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNextSessionIdle(Entry entry, ProtocolSession protocolSession, IdleStatus idleStatus) {
        try {
            entry.filter.sessionIdle(entry.nextFilter, protocolSession, idleStatus);
        } catch (Throwable th) {
            exceptionCaught(protocolSession, th);
        }
    }

    public void messageReceived(ProtocolSession protocolSession, Object obj) {
        callNextMessageReceived(this.head, protocolSession, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNextMessageReceived(Entry entry, ProtocolSession protocolSession, Object obj) {
        try {
            entry.filter.messageReceived(entry.nextFilter, protocolSession, obj);
        } catch (Throwable th) {
            exceptionCaught(protocolSession, th);
        }
    }

    public void messageSent(ProtocolSession protocolSession, Object obj) {
        callNextMessageSent(this.head, protocolSession, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNextMessageSent(Entry entry, ProtocolSession protocolSession, Object obj) {
        try {
            entry.filter.messageSent(entry.nextFilter, protocolSession, obj);
        } catch (Throwable th) {
            exceptionCaught(protocolSession, th);
        }
    }

    public void exceptionCaught(ProtocolSession protocolSession, Throwable th) {
        callNextExceptionCaught(this.head, protocolSession, th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNextExceptionCaught(Entry entry, ProtocolSession protocolSession, Throwable th) {
        try {
            entry.filter.exceptionCaught(entry.nextFilter, protocolSession, th);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void filterWrite(ProtocolSession protocolSession, Object obj) {
        callPreviousFilterWrite(this.tail, protocolSession, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callPreviousFilterWrite(Entry entry, ProtocolSession protocolSession, Object obj) {
        if (obj == null) {
            return;
        }
        try {
            entry.filter.filterWrite(entry.prevFilter, protocolSession, obj);
        } catch (Throwable th) {
            exceptionCaught(protocolSession, th);
        }
    }

    @Override // org.apache.mina.protocol.ProtocolFilterChain
    public List getChildren() {
        ArrayList arrayList = new ArrayList();
        for (Entry entry = this.head.nextEntry; entry != this.tail; entry = entry.nextEntry) {
            arrayList.add(entry.filter);
        }
        return arrayList;
    }

    @Override // org.apache.mina.protocol.ProtocolFilterChain
    public List getChildrenReversed() {
        ArrayList arrayList = new ArrayList();
        for (Entry entry = this.tail.prevEntry; entry != this.head; entry = entry.prevEntry) {
            arrayList.add(entry.filter);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class Entry {
        private final ProtocolFilter filter;
        private final String name;
        private Entry nextEntry;
        private final ProtocolFilter.NextFilter nextFilter;
        private Entry prevEntry;
        private final ProtocolFilter.NextFilter prevFilter;

        private Entry(Entry entry, Entry entry2, String str, ProtocolFilter protocolFilter) {
            if (protocolFilter == null) {
                throw new NullPointerException("filter");
            }
            if (str == null) {
                throw new NullPointerException("name");
            }
            this.prevEntry = entry;
            this.nextEntry = entry2;
            this.name = str;
            this.filter = protocolFilter;
            this.nextFilter = new ProtocolFilter.NextFilter() { // from class: org.apache.mina.protocol.AbstractProtocolFilterChain.Entry.1
                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void sessionOpened(ProtocolSession protocolSession) {
                    AbstractProtocolFilterChain.this.callNextSessionOpened(Entry.this.nextEntry, protocolSession);
                }

                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void sessionClosed(ProtocolSession protocolSession) {
                    AbstractProtocolFilterChain.this.callNextSessionClosed(Entry.this.nextEntry, protocolSession);
                }

                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void sessionIdle(ProtocolSession protocolSession, IdleStatus idleStatus) {
                    AbstractProtocolFilterChain.this.callNextSessionIdle(Entry.this.nextEntry, protocolSession, idleStatus);
                }

                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void exceptionCaught(ProtocolSession protocolSession, Throwable th) {
                    AbstractProtocolFilterChain.this.callNextExceptionCaught(Entry.this.nextEntry, protocolSession, th);
                }

                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void messageReceived(ProtocolSession protocolSession, Object obj) {
                    AbstractProtocolFilterChain.this.callNextMessageReceived(Entry.this.nextEntry, protocolSession, obj);
                }

                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void messageSent(ProtocolSession protocolSession, Object obj) {
                    AbstractProtocolFilterChain.this.callNextMessageSent(Entry.this.nextEntry, protocolSession, obj);
                }

                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void filterWrite(ProtocolSession protocolSession, Object obj) {
                    throw new IllegalStateException();
                }
            };
            this.prevFilter = new ProtocolFilter.NextFilter() { // from class: org.apache.mina.protocol.AbstractProtocolFilterChain.Entry.2
                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void sessionOpened(ProtocolSession protocolSession) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void sessionClosed(ProtocolSession protocolSession) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void sessionIdle(ProtocolSession protocolSession, IdleStatus idleStatus) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void exceptionCaught(ProtocolSession protocolSession, Throwable th) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void messageReceived(ProtocolSession protocolSession, Object obj) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void messageSent(ProtocolSession protocolSession, Object obj) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.protocol.ProtocolFilter.NextFilter
                public void filterWrite(ProtocolSession protocolSession, Object obj) {
                    AbstractProtocolFilterChain.this.callPreviousFilterWrite(Entry.this.prevEntry, protocolSession, obj);
                }
            };
        }

        public String getName() {
            return this.name;
        }

        public ProtocolFilter getFilter() {
            return this.filter;
        }
    }
}
