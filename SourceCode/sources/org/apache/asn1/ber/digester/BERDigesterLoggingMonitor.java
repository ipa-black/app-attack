package org.apache.asn1.ber.digester;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes5.dex */
public class BERDigesterLoggingMonitor implements BERDigesterMonitor {
    private static Log log = LogFactory.getLog("BERDigester");

    @Override // org.apache.asn1.ber.digester.BERDigesterMonitor
    public void ruleFailed(BERDigester bERDigester, Rule rule, String str, Throwable th) {
        if (log.isErrorEnabled()) {
            log.error(new StringBuffer("Error while triggering rule ").append(rule).append(" with digester ").append(bERDigester).append(": ").append(str).toString(), th);
        }
    }

    @Override // org.apache.asn1.ber.digester.BERDigesterMonitor
    public void ruleCompleted(BERDigester bERDigester, Rule rule) {
        if (log.isDebugEnabled()) {
            log.debug(new StringBuffer("Rule ").append(rule).append(" fired successfully by digester ").append(bERDigester).toString());
        }
    }
}
