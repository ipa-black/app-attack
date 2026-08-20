package org.apache.ldap.server.interceptor;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.server.authn.AuthenticationService;
import org.apache.ldap.server.authz.AuthorizationService;
import org.apache.ldap.server.exception.ExceptionService;
import org.apache.ldap.server.invocation.Invocation;
import org.apache.ldap.server.normalization.NormalizationService;
import org.apache.ldap.server.operational.OperationalAttributeService;
import org.apache.ldap.server.schema.SchemaService;
/* loaded from: classes3.dex */
public class InterceptorChain implements Interceptor {
    public static final String NEXT_INTERCEPTOR = "nextInterceptor";
    private final Interceptor FINAL_INTERCEPTOR;
    private final Interceptor NEXT_INTERCEPTOR0;
    private Entry head;
    private final Map interceptor2entry;
    private final Map name2entry;
    private InterceptorChain parent;
    private final Entry tail;

    public static InterceptorChain newDefaultChain() {
        InterceptorChain interceptorChain = new InterceptorChain();
        interceptorChain.addFirst("normalizationService", new NormalizationService());
        interceptorChain.addBefore(NEXT_INTERCEPTOR, "authenticationService", new AuthenticationService());
        interceptorChain.addBefore(NEXT_INTERCEPTOR, "authorizationService", new AuthorizationService());
        interceptorChain.addBefore(NEXT_INTERCEPTOR, "exceptionService", new ExceptionService());
        interceptorChain.addBefore(NEXT_INTERCEPTOR, "schemaService", new SchemaService());
        interceptorChain.addBefore(NEXT_INTERCEPTOR, "operationalAttributeService", new OperationalAttributeService());
        return interceptorChain;
    }

    public InterceptorChain() {
        Interceptor interceptor = new Interceptor() { // from class: org.apache.ldap.server.interceptor.InterceptorChain.1
            @Override // org.apache.ldap.server.interceptor.Interceptor
            public void destroy() {
            }

            @Override // org.apache.ldap.server.interceptor.Interceptor
            public void init(InterceptorContext interceptorContext) {
            }

            @Override // org.apache.ldap.server.interceptor.Interceptor
            public void process(NextInterceptor nextInterceptor, Invocation invocation) throws NamingException {
                if (InterceptorChain.this.parent != null) {
                    ((Entry) InterceptorChain.this.parent.interceptor2entry.get(InterceptorChain.this)).nextInterceptor.process(invocation);
                }
                nextInterceptor.process(invocation);
            }
        };
        this.NEXT_INTERCEPTOR0 = interceptor;
        Interceptor interceptor2 = new Interceptor() { // from class: org.apache.ldap.server.interceptor.InterceptorChain.2
            private InterceptorContext ctx;

            @Override // org.apache.ldap.server.interceptor.Interceptor
            public void destroy() {
            }

            @Override // org.apache.ldap.server.interceptor.Interceptor
            public void init(InterceptorContext interceptorContext) {
                this.ctx = interceptorContext;
            }

            @Override // org.apache.ldap.server.interceptor.Interceptor
            public void process(NextInterceptor nextInterceptor, Invocation invocation) throws NamingException {
                if (InterceptorChain.this.parent == null) {
                    invocation.execute(this.ctx.getRootNexus());
                }
            }
        };
        this.FINAL_INTERCEPTOR = interceptor2;
        this.name2entry = new HashMap();
        this.interceptor2entry = new IdentityHashMap();
        this.head = new Entry(null, null, NEXT_INTERCEPTOR, interceptor);
        Entry entry = new Entry(null, null, TtmlNode.END, interceptor2);
        this.tail = entry;
        this.head.nextEntry = entry;
        entry.prevEntry = this.head;
        register(NEXT_INTERCEPTOR, this.head);
    }

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public synchronized void init(InterceptorContext interceptorContext) throws NamingException {
        ListIterator listIterator = getAll().listIterator();
        Interceptor interceptor = null;
        while (listIterator.hasNext()) {
            try {
                Interceptor interceptor2 = (Interceptor) listIterator.next();
                try {
                    String name = getName(interceptor2);
                    Map config = interceptorContext.getConfig();
                    if (name == null) {
                        name = "";
                    }
                    interceptor2.init(new InterceptorContext(interceptorContext.getEnvironment(), interceptorContext.getSystemPartition(), interceptorContext.getGlobalRegistries(), interceptorContext.getRootNexus(), InterceptorConfigBuilder.build(config, name)));
                    interceptor = interceptor2;
                } catch (Throwable th) {
                    th = th;
                    interceptor = interceptor2;
                    while (listIterator.hasPrevious()) {
                        ((Interceptor) listIterator.previous()).destroy();
                    }
                    if (th instanceof NamingException) {
                        throw ((NamingException) th);
                    }
                    throw new InterceptorException(interceptor, null, "Failed to initialize interceptor chain.", th);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public synchronized void destroy() {
        ListIterator listIterator = getAllReversed().listIterator();
        while (listIterator.hasNext()) {
            ((Interceptor) listIterator.next()).destroy();
        }
    }

    public Interceptor get(String str) {
        Entry entry = (Entry) this.name2entry.get(str);
        if (entry == null) {
            return null;
        }
        return entry.interceptor;
    }

    private String getName(Interceptor interceptor) {
        Entry entry = (Entry) this.interceptor2entry.get(interceptor);
        if (entry == null) {
            return null;
        }
        return entry.name;
    }

    public synchronized void addFirst(String str, Interceptor interceptor) {
        checkAddable(str, interceptor);
        Entry entry = new Entry(null, this.head, str, interceptor);
        this.head.prevEntry = entry;
        this.head = entry;
        register(str, entry);
    }

    public synchronized void addLast(String str, Interceptor interceptor) {
        checkAddable(str, interceptor);
        Entry entry = new Entry(this.tail.prevEntry, this.tail, str, interceptor);
        if (this.tail.prevEntry == null) {
            this.head = entry;
        } else {
            this.tail.prevEntry.nextEntry = entry;
        }
        this.tail.prevEntry = entry;
        register(str, entry);
    }

    public synchronized void addBefore(String str, String str2, Interceptor interceptor) {
        Entry checkOldName = checkOldName(str);
        checkAddable(str2, interceptor);
        Entry entry = checkOldName.prevEntry;
        Entry entry2 = new Entry(entry, checkOldName, str2, interceptor);
        if (entry == null) {
            checkOldName.prevEntry = entry2;
            this.head = entry2;
        } else {
            checkOldName.prevEntry = entry2;
            entry.nextEntry = entry2;
        }
        register(str2, entry2);
    }

    public synchronized void addAfter(String str, String str2, Interceptor interceptor) {
        Entry checkOldName = checkOldName(str);
        checkAddable(str2, interceptor);
        Entry entry = checkOldName.nextEntry;
        Entry entry2 = new Entry(checkOldName, entry, str2, interceptor);
        if (entry == null) {
            throw new IllegalStateException();
        }
        entry.prevEntry.nextEntry = entry2;
        entry.prevEntry = entry2;
        register(str2, entry2);
    }

    public synchronized void remove(String str) {
        Entry checkOldName = checkOldName(str);
        Entry entry = checkOldName.prevEntry;
        Entry entry2 = checkOldName.nextEntry;
        if (entry == null) {
            entry2.prevEntry = null;
            this.head = checkOldName;
        } else {
            entry.nextEntry = entry2;
            entry2.prevEntry = entry;
        }
        this.name2entry.remove(str);
        Interceptor interceptor = checkOldName.interceptor;
        this.interceptor2entry.remove(interceptor);
        if (interceptor instanceof InterceptorChain) {
            ((InterceptorChain) interceptor).parent = null;
        }
    }

    public synchronized void clear() {
        Iterator it = new ArrayList(this.name2entry.keySet()).iterator();
        while (it.hasNext()) {
            remove((String) it.next());
        }
    }

    private void register(String str, Entry entry) {
        Interceptor interceptor = entry.interceptor;
        this.name2entry.put(str, entry);
        this.interceptor2entry.put(entry.interceptor, entry);
        if (interceptor instanceof InterceptorChain) {
            ((InterceptorChain) interceptor).parent = this;
        }
    }

    private Entry checkOldName(String str) {
        Entry entry = (Entry) this.name2entry.get(str);
        if (entry != null) {
            return entry;
        }
        throw new IllegalArgumentException(new StringBuffer("Unknown interceptor name:").append(str).toString());
    }

    private void checkAddable(String str, Interceptor interceptor) {
        if (this.name2entry.containsKey(str)) {
            throw new IllegalArgumentException(new StringBuffer("Other interceptor is using name '").append(str).append("'").toString());
        }
        if ((interceptor instanceof InterceptorChain) && ((InterceptorChain) interceptor).parent != null) {
            throw new IllegalArgumentException("This interceptor chain has its parent already.");
        }
    }

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void process(NextInterceptor nextInterceptor, Invocation invocation) throws NamingException {
        Entry entry = this.head;
        try {
            entry.interceptor.process(entry.nextInterceptor, invocation);
        } catch (NamingException e2) {
            throw e2;
        } catch (Throwable th) {
            throw new InterceptorException(entry.interceptor, invocation, "Unexpected exception.", th);
        }
    }

    public List getAll() {
        ArrayList arrayList = new ArrayList();
        Entry entry = this.head;
        do {
            arrayList.add(entry.interceptor);
            entry = entry.nextEntry;
        } while (entry != null);
        return arrayList;
    }

    public List getAllReversed() {
        ArrayList arrayList = new ArrayList();
        Entry entry = this.tail;
        do {
            arrayList.add(entry.interceptor);
            entry = entry.prevEntry;
        } while (entry != null);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class Entry {
        private final Interceptor interceptor;
        private final String name;
        private Entry nextEntry;
        private final NextInterceptor nextInterceptor;
        private Entry prevEntry;

        Entry(Entry entry, Entry entry2, String str, Interceptor interceptor) {
            if (interceptor == null) {
                throw new NullPointerException("interceptor");
            }
            if (str == null) {
                throw new NullPointerException("name");
            }
            this.prevEntry = entry;
            this.nextEntry = entry2;
            this.name = str;
            this.interceptor = interceptor;
            this.nextInterceptor = new NextInterceptor() { // from class: org.apache.ldap.server.interceptor.InterceptorChain.3
                @Override // org.apache.ldap.server.interceptor.NextInterceptor
                public void process(Invocation invocation) throws NamingException {
                    Interceptor interceptor2 = Entry.this.nextEntry.interceptor;
                    try {
                        interceptor2.process(Entry.this.nextEntry.nextInterceptor, invocation);
                    } catch (NamingException e2) {
                        throw e2;
                    } catch (Throwable th) {
                        throw new InterceptorException(interceptor2, invocation, "Unexpected exception.", th);
                    }
                }
            };
        }
    }
}
