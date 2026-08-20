package org.apache.mina.protocol.codec;

import java.util.Set;
import org.apache.mina.protocol.ProtocolEncoder;
/* loaded from: classes5.dex */
public interface MessageEncoder extends ProtocolEncoder {
    Set getMessageTypes();
}
