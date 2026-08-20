package org.apache.ldap.server.protocol;

import java.util.Collections;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import org.apache.asn1.codec.mina.Asn1CodecDecoder;
import org.apache.asn1.codec.mina.Asn1CodecEncoder;
import org.apache.ldap.common.exception.LdapNamingException;
import org.apache.ldap.common.message.MessageDecoder;
import org.apache.ldap.common.message.MessageEncoder;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.message.spi.Provider;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.protocol.ProtocolCodecFactory;
import org.apache.mina.protocol.ProtocolDecoder;
import org.apache.mina.protocol.ProtocolEncoder;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolProvider;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.handler.DemuxingProtocolHandler;
import org.apache.mina.protocol.handler.MessageHandler;
/* loaded from: classes3.dex */
public class LdapProtocolProvider implements ProtocolProvider {
    public static final Map DEFAULT_HANDLERS;
    public static final String SERVICE_NAME = "ldap";
    static /* synthetic */ Class class$org$apache$ldap$common$message$AbandonRequest;
    static /* synthetic */ Class class$org$apache$ldap$common$message$AbandonRequestImpl;
    static /* synthetic */ Class class$org$apache$ldap$common$message$AddRequest;
    static /* synthetic */ Class class$org$apache$ldap$common$message$AddRequestImpl;
    static /* synthetic */ Class class$org$apache$ldap$common$message$BindRequest;
    static /* synthetic */ Class class$org$apache$ldap$common$message$BindRequestImpl;
    static /* synthetic */ Class class$org$apache$ldap$common$message$CompareRequest;
    static /* synthetic */ Class class$org$apache$ldap$common$message$CompareRequestImpl;
    static /* synthetic */ Class class$org$apache$ldap$common$message$DeleteRequest;
    static /* synthetic */ Class class$org$apache$ldap$common$message$DeleteRequestImpl;
    static /* synthetic */ Class class$org$apache$ldap$common$message$ExtendedRequest;
    static /* synthetic */ Class class$org$apache$ldap$common$message$ExtendedRequestImpl;
    static /* synthetic */ Class class$org$apache$ldap$common$message$ModifyDnRequest;
    static /* synthetic */ Class class$org$apache$ldap$common$message$ModifyDnRequestImpl;
    static /* synthetic */ Class class$org$apache$ldap$common$message$ModifyRequest;
    static /* synthetic */ Class class$org$apache$ldap$common$message$ModifyRequestImpl;
    static /* synthetic */ Class class$org$apache$ldap$common$message$SearchRequest;
    static /* synthetic */ Class class$org$apache$ldap$common$message$SearchRequestImpl;
    static /* synthetic */ Class class$org$apache$ldap$common$message$UnbindRequest;
    static /* synthetic */ Class class$org$apache$ldap$common$message$UnbindRequestImpl;
    static /* synthetic */ Class class$org$apache$ldap$server$protocol$AbandonHandler;
    static /* synthetic */ Class class$org$apache$ldap$server$protocol$AddHandler;
    static /* synthetic */ Class class$org$apache$ldap$server$protocol$BindHandler;
    static /* synthetic */ Class class$org$apache$ldap$server$protocol$CompareHandler;
    static /* synthetic */ Class class$org$apache$ldap$server$protocol$DeleteHandler;
    static /* synthetic */ Class class$org$apache$ldap$server$protocol$ExtendedHandler;
    static /* synthetic */ Class class$org$apache$ldap$server$protocol$ModifyDnHandler;
    static /* synthetic */ Class class$org$apache$ldap$server$protocol$ModifyHandler;
    static /* synthetic */ Class class$org$apache$ldap$server$protocol$SearchHandler;
    static /* synthetic */ Class class$org$apache$ldap$server$protocol$UnbindHandler;
    private final ProtocolCodecFactory codecFactory;
    private final LdapProtocolHandler handler = new LdapProtocolHandler();

    static {
        HashMap hashMap = new HashMap();
        Class cls = class$org$apache$ldap$common$message$AbandonRequest;
        if (cls == null) {
            cls = class$("org.apache.ldap.common.message.AbandonRequest");
            class$org$apache$ldap$common$message$AbandonRequest = cls;
        }
        String name = cls.getName();
        Class cls2 = class$org$apache$ldap$server$protocol$AbandonHandler;
        if (cls2 == null) {
            cls2 = class$("org.apache.ldap.server.protocol.AbandonHandler");
            class$org$apache$ldap$server$protocol$AbandonHandler = cls2;
        }
        hashMap.put(name, cls2);
        Class cls3 = class$org$apache$ldap$common$message$AbandonRequestImpl;
        if (cls3 == null) {
            cls3 = class$("org.apache.ldap.common.message.AbandonRequestImpl");
            class$org$apache$ldap$common$message$AbandonRequestImpl = cls3;
        }
        String name2 = cls3.getName();
        Class cls4 = class$org$apache$ldap$server$protocol$AbandonHandler;
        if (cls4 == null) {
            cls4 = class$("org.apache.ldap.server.protocol.AbandonHandler");
            class$org$apache$ldap$server$protocol$AbandonHandler = cls4;
        }
        hashMap.put(name2, cls4);
        Class cls5 = class$org$apache$ldap$common$message$AddRequest;
        if (cls5 == null) {
            cls5 = class$("org.apache.ldap.common.message.AddRequest");
            class$org$apache$ldap$common$message$AddRequest = cls5;
        }
        String name3 = cls5.getName();
        Class cls6 = class$org$apache$ldap$server$protocol$AddHandler;
        if (cls6 == null) {
            cls6 = class$("org.apache.ldap.server.protocol.AddHandler");
            class$org$apache$ldap$server$protocol$AddHandler = cls6;
        }
        hashMap.put(name3, cls6);
        Class cls7 = class$org$apache$ldap$common$message$AddRequestImpl;
        if (cls7 == null) {
            cls7 = class$("org.apache.ldap.common.message.AddRequestImpl");
            class$org$apache$ldap$common$message$AddRequestImpl = cls7;
        }
        String name4 = cls7.getName();
        Class cls8 = class$org$apache$ldap$server$protocol$AddHandler;
        if (cls8 == null) {
            cls8 = class$("org.apache.ldap.server.protocol.AddHandler");
            class$org$apache$ldap$server$protocol$AddHandler = cls8;
        }
        hashMap.put(name4, cls8);
        Class cls9 = class$org$apache$ldap$common$message$BindRequest;
        if (cls9 == null) {
            cls9 = class$("org.apache.ldap.common.message.BindRequest");
            class$org$apache$ldap$common$message$BindRequest = cls9;
        }
        String name5 = cls9.getName();
        Class cls10 = class$org$apache$ldap$server$protocol$BindHandler;
        if (cls10 == null) {
            cls10 = class$("org.apache.ldap.server.protocol.BindHandler");
            class$org$apache$ldap$server$protocol$BindHandler = cls10;
        }
        hashMap.put(name5, cls10);
        Class cls11 = class$org$apache$ldap$common$message$BindRequestImpl;
        if (cls11 == null) {
            cls11 = class$("org.apache.ldap.common.message.BindRequestImpl");
            class$org$apache$ldap$common$message$BindRequestImpl = cls11;
        }
        String name6 = cls11.getName();
        Class cls12 = class$org$apache$ldap$server$protocol$BindHandler;
        if (cls12 == null) {
            cls12 = class$("org.apache.ldap.server.protocol.BindHandler");
            class$org$apache$ldap$server$protocol$BindHandler = cls12;
        }
        hashMap.put(name6, cls12);
        Class cls13 = class$org$apache$ldap$common$message$CompareRequest;
        if (cls13 == null) {
            cls13 = class$("org.apache.ldap.common.message.CompareRequest");
            class$org$apache$ldap$common$message$CompareRequest = cls13;
        }
        String name7 = cls13.getName();
        Class cls14 = class$org$apache$ldap$server$protocol$CompareHandler;
        if (cls14 == null) {
            cls14 = class$("org.apache.ldap.server.protocol.CompareHandler");
            class$org$apache$ldap$server$protocol$CompareHandler = cls14;
        }
        hashMap.put(name7, cls14);
        Class cls15 = class$org$apache$ldap$common$message$CompareRequestImpl;
        if (cls15 == null) {
            cls15 = class$("org.apache.ldap.common.message.CompareRequestImpl");
            class$org$apache$ldap$common$message$CompareRequestImpl = cls15;
        }
        String name8 = cls15.getName();
        Class cls16 = class$org$apache$ldap$server$protocol$CompareHandler;
        if (cls16 == null) {
            cls16 = class$("org.apache.ldap.server.protocol.CompareHandler");
            class$org$apache$ldap$server$protocol$CompareHandler = cls16;
        }
        hashMap.put(name8, cls16);
        Class cls17 = class$org$apache$ldap$common$message$DeleteRequest;
        if (cls17 == null) {
            cls17 = class$("org.apache.ldap.common.message.DeleteRequest");
            class$org$apache$ldap$common$message$DeleteRequest = cls17;
        }
        String name9 = cls17.getName();
        Class cls18 = class$org$apache$ldap$server$protocol$DeleteHandler;
        if (cls18 == null) {
            cls18 = class$("org.apache.ldap.server.protocol.DeleteHandler");
            class$org$apache$ldap$server$protocol$DeleteHandler = cls18;
        }
        hashMap.put(name9, cls18);
        Class cls19 = class$org$apache$ldap$common$message$DeleteRequestImpl;
        if (cls19 == null) {
            cls19 = class$("org.apache.ldap.common.message.DeleteRequestImpl");
            class$org$apache$ldap$common$message$DeleteRequestImpl = cls19;
        }
        String name10 = cls19.getName();
        Class cls20 = class$org$apache$ldap$server$protocol$DeleteHandler;
        if (cls20 == null) {
            cls20 = class$("org.apache.ldap.server.protocol.DeleteHandler");
            class$org$apache$ldap$server$protocol$DeleteHandler = cls20;
        }
        hashMap.put(name10, cls20);
        Class cls21 = class$org$apache$ldap$common$message$ExtendedRequest;
        if (cls21 == null) {
            cls21 = class$("org.apache.ldap.common.message.ExtendedRequest");
            class$org$apache$ldap$common$message$ExtendedRequest = cls21;
        }
        String name11 = cls21.getName();
        Class cls22 = class$org$apache$ldap$server$protocol$ExtendedHandler;
        if (cls22 == null) {
            cls22 = class$("org.apache.ldap.server.protocol.ExtendedHandler");
            class$org$apache$ldap$server$protocol$ExtendedHandler = cls22;
        }
        hashMap.put(name11, cls22);
        Class cls23 = class$org$apache$ldap$common$message$ExtendedRequestImpl;
        if (cls23 == null) {
            cls23 = class$("org.apache.ldap.common.message.ExtendedRequestImpl");
            class$org$apache$ldap$common$message$ExtendedRequestImpl = cls23;
        }
        String name12 = cls23.getName();
        Class cls24 = class$org$apache$ldap$server$protocol$ExtendedHandler;
        if (cls24 == null) {
            cls24 = class$("org.apache.ldap.server.protocol.ExtendedHandler");
            class$org$apache$ldap$server$protocol$ExtendedHandler = cls24;
        }
        hashMap.put(name12, cls24);
        Class cls25 = class$org$apache$ldap$common$message$ModifyRequest;
        if (cls25 == null) {
            cls25 = class$("org.apache.ldap.common.message.ModifyRequest");
            class$org$apache$ldap$common$message$ModifyRequest = cls25;
        }
        String name13 = cls25.getName();
        Class cls26 = class$org$apache$ldap$server$protocol$ModifyHandler;
        if (cls26 == null) {
            cls26 = class$("org.apache.ldap.server.protocol.ModifyHandler");
            class$org$apache$ldap$server$protocol$ModifyHandler = cls26;
        }
        hashMap.put(name13, cls26);
        Class cls27 = class$org$apache$ldap$common$message$ModifyRequestImpl;
        if (cls27 == null) {
            cls27 = class$("org.apache.ldap.common.message.ModifyRequestImpl");
            class$org$apache$ldap$common$message$ModifyRequestImpl = cls27;
        }
        String name14 = cls27.getName();
        Class cls28 = class$org$apache$ldap$server$protocol$ModifyHandler;
        if (cls28 == null) {
            cls28 = class$("org.apache.ldap.server.protocol.ModifyHandler");
            class$org$apache$ldap$server$protocol$ModifyHandler = cls28;
        }
        hashMap.put(name14, cls28);
        Class cls29 = class$org$apache$ldap$common$message$ModifyDnRequest;
        if (cls29 == null) {
            cls29 = class$("org.apache.ldap.common.message.ModifyDnRequest");
            class$org$apache$ldap$common$message$ModifyDnRequest = cls29;
        }
        String name15 = cls29.getName();
        Class cls30 = class$org$apache$ldap$server$protocol$ModifyDnHandler;
        if (cls30 == null) {
            cls30 = class$("org.apache.ldap.server.protocol.ModifyDnHandler");
            class$org$apache$ldap$server$protocol$ModifyDnHandler = cls30;
        }
        hashMap.put(name15, cls30);
        Class cls31 = class$org$apache$ldap$common$message$ModifyDnRequestImpl;
        if (cls31 == null) {
            cls31 = class$("org.apache.ldap.common.message.ModifyDnRequestImpl");
            class$org$apache$ldap$common$message$ModifyDnRequestImpl = cls31;
        }
        String name16 = cls31.getName();
        Class cls32 = class$org$apache$ldap$server$protocol$ModifyDnHandler;
        if (cls32 == null) {
            cls32 = class$("org.apache.ldap.server.protocol.ModifyDnHandler");
            class$org$apache$ldap$server$protocol$ModifyDnHandler = cls32;
        }
        hashMap.put(name16, cls32);
        Class cls33 = class$org$apache$ldap$common$message$SearchRequest;
        if (cls33 == null) {
            cls33 = class$("org.apache.ldap.common.message.SearchRequest");
            class$org$apache$ldap$common$message$SearchRequest = cls33;
        }
        String name17 = cls33.getName();
        Class cls34 = class$org$apache$ldap$server$protocol$SearchHandler;
        if (cls34 == null) {
            cls34 = class$("org.apache.ldap.server.protocol.SearchHandler");
            class$org$apache$ldap$server$protocol$SearchHandler = cls34;
        }
        hashMap.put(name17, cls34);
        Class cls35 = class$org$apache$ldap$common$message$SearchRequestImpl;
        if (cls35 == null) {
            cls35 = class$("org.apache.ldap.common.message.SearchRequestImpl");
            class$org$apache$ldap$common$message$SearchRequestImpl = cls35;
        }
        String name18 = cls35.getName();
        Class cls36 = class$org$apache$ldap$server$protocol$SearchHandler;
        if (cls36 == null) {
            cls36 = class$("org.apache.ldap.server.protocol.SearchHandler");
            class$org$apache$ldap$server$protocol$SearchHandler = cls36;
        }
        hashMap.put(name18, cls36);
        Class cls37 = class$org$apache$ldap$common$message$UnbindRequest;
        if (cls37 == null) {
            cls37 = class$("org.apache.ldap.common.message.UnbindRequest");
            class$org$apache$ldap$common$message$UnbindRequest = cls37;
        }
        String name19 = cls37.getName();
        Class cls38 = class$org$apache$ldap$server$protocol$UnbindHandler;
        if (cls38 == null) {
            cls38 = class$("org.apache.ldap.server.protocol.UnbindHandler");
            class$org$apache$ldap$server$protocol$UnbindHandler = cls38;
        }
        hashMap.put(name19, cls38);
        Class cls39 = class$org$apache$ldap$common$message$UnbindRequestImpl;
        if (cls39 == null) {
            cls39 = class$("org.apache.ldap.common.message.UnbindRequestImpl");
            class$org$apache$ldap$common$message$UnbindRequestImpl = cls39;
        }
        String name20 = cls39.getName();
        Class cls40 = class$org$apache$ldap$server$protocol$UnbindHandler;
        if (cls40 == null) {
            cls40 = class$("org.apache.ldap.server.protocol.UnbindHandler");
            class$org$apache$ldap$server$protocol$UnbindHandler = cls40;
        }
        hashMap.put(name20, cls40);
        DEFAULT_HANDLERS = Collections.unmodifiableMap(hashMap);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Throwable, org.apache.ldap.common.exception.LdapNamingException] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Throwable, org.apache.ldap.common.exception.LdapNamingException] */
    public LdapProtocolProvider(Hashtable hashtable) throws LdapNamingException {
        Class<?> cls;
        Hashtable hashtable2 = (Hashtable) hashtable.clone();
        hashtable2.put("java.naming.provider.url", "");
        SessionRegistry.releaseSingleton();
        new SessionRegistry(hashtable2);
        for (String str : DEFAULT_HANDLERS.keySet()) {
            if (hashtable2.containsKey(str)) {
                try {
                    cls = Class.forName((String) hashtable2.get(str));
                } catch (ClassNotFoundException e2) {
                    ?? ldapNamingException = new LdapNamingException(new StringBuffer("failed to load class null for processing ").append(str).append(" objects.").toString(), ResultCodeEnum.OTHER);
                    ldapNamingException.setRootCause(e2);
                    throw ldapNamingException;
                }
            } else {
                cls = (Class) DEFAULT_HANDLERS.get(str);
            }
            try {
                this.handler.registerMessageType(Class.forName(str), (MessageHandler) cls.newInstance());
            } catch (Exception e3) {
                ?? ldapNamingException2 = new LdapNamingException(new StringBuffer().append(new StringBuffer("failed to create handler instance of ").append(cls).toString()).append(" for processing ").append(str).append(" objects.").toString(), ResultCodeEnum.OTHER);
                ldapNamingException2.setRootCause(e3);
                throw ldapNamingException2;
            }
        }
        this.codecFactory = new ProtocolCodecFactoryImpl(hashtable2);
    }

    /* JADX WARN: Type inference failed for: r2v8, types: [java.lang.Throwable, org.apache.ldap.common.exception.LdapNamingException] */
    public LdapProtocolProvider() throws LdapNamingException {
        SessionRegistry.releaseSingleton();
        new SessionRegistry(null);
        for (String str : DEFAULT_HANDLERS.keySet()) {
            Class cls = (Class) DEFAULT_HANDLERS.get(str);
            try {
                this.handler.registerMessageType(Class.forName(str), (MessageHandler) cls.newInstance());
            } catch (Exception e2) {
                ?? ldapNamingException = new LdapNamingException(new StringBuffer().append(new StringBuffer("failed to create handler instance of ").append(cls).toString()).append(" for processing ").append(str).append(" objects.").toString(), ResultCodeEnum.OTHER);
                ldapNamingException.setRootCause(e2);
                throw ldapNamingException;
            }
        }
        this.codecFactory = new ProtocolCodecFactoryImpl();
    }

    public String getName() {
        return SERVICE_NAME;
    }

    @Override // org.apache.mina.protocol.ProtocolProvider
    public ProtocolCodecFactory getCodecFactory() {
        return this.codecFactory;
    }

    @Override // org.apache.mina.protocol.ProtocolProvider
    public ProtocolHandler getHandler() {
        return this.handler;
    }

    /* loaded from: classes3.dex */
    private static final class ProtocolCodecFactoryImpl implements ProtocolCodecFactory {
        final Hashtable env;

        public ProtocolCodecFactoryImpl() {
            this.env = null;
        }

        ProtocolCodecFactoryImpl(Hashtable hashtable) {
            this.env = hashtable;
        }

        @Override // org.apache.mina.protocol.ProtocolCodecFactory
        public ProtocolEncoder newEncoder() {
            Hashtable hashtable = this.env;
            if (hashtable == null || hashtable.get(Provider.BERLIB_PROVIDER) == null) {
                return new Asn1CodecEncoder(new MessageEncoder());
            }
            return new Asn1CodecEncoder(new MessageEncoder(this.env));
        }

        @Override // org.apache.mina.protocol.ProtocolCodecFactory
        public ProtocolDecoder newDecoder() {
            Hashtable hashtable = this.env;
            if (hashtable == null || hashtable.get(Provider.BERLIB_PROVIDER) == null) {
                return new Asn1CodecDecoder(new MessageDecoder());
            }
            return new Asn1CodecDecoder(new MessageDecoder(this.env));
        }
    }

    /* loaded from: classes3.dex */
    private class LdapProtocolHandler extends DemuxingProtocolHandler {
        @Override // org.apache.mina.protocol.ProtocolHandler
        public void messageSent(ProtocolSession protocolSession, Object obj) {
        }

        @Override // org.apache.mina.protocol.ProtocolHandler
        public void sessionCreated(ProtocolSession protocolSession) {
        }

        @Override // org.apache.mina.protocol.ProtocolHandler
        public void sessionIdle(ProtocolSession protocolSession, IdleStatus idleStatus) {
        }

        @Override // org.apache.mina.protocol.ProtocolHandler
        public void sessionOpened(ProtocolSession protocolSession) {
        }

        private LdapProtocolHandler() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.apache.mina.protocol.handler.DemuxingProtocolHandler
        public void deregisterMessageType(Class cls) {
            super.deregisterMessageType(cls);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.apache.mina.protocol.handler.DemuxingProtocolHandler
        public void registerMessageType(Class cls, MessageHandler messageHandler) {
            super.registerMessageType(cls, messageHandler);
        }

        @Override // org.apache.mina.protocol.ProtocolHandler
        public void sessionClosed(ProtocolSession protocolSession) {
            SessionRegistry.getSingleton().remove(protocolSession);
        }

        @Override // org.apache.mina.protocol.ProtocolHandler
        public void exceptionCaught(ProtocolSession protocolSession, Throwable th) {
            th.printStackTrace();
        }
    }

    public static void main(String[] strArr) throws Exception {
        new LdapProtocolProvider();
    }
}
