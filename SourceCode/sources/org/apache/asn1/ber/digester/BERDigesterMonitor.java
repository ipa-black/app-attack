package org.apache.asn1.ber.digester;
/* loaded from: classes5.dex */
public interface BERDigesterMonitor {
    void ruleCompleted(BERDigester bERDigester, Rule rule);

    void ruleFailed(BERDigester bERDigester, Rule rule, String str, Throwable th);
}
