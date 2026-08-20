package org.apache.ldap.common.berlib.asn1.encoder;

import org.apache.asn1.ber.DeterminateLengthVisitor;
import org.apache.asn1.ber.TupleEncodingVisitor;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.codec.EncoderException;
import org.apache.asn1.codec.stateful.EncoderCallback;
import org.apache.asn1.codec.stateful.EncoderMonitor;
import org.apache.asn1.codec.stateful.StatefulEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.abandon.AbandonRequestEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.add.AddRequestEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.add.AddResponseEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.bind.BindRequestEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.bind.BindResponseEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.compare.CompareRequestEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.compare.CompareResponseEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.delete.DeleteRequestEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.delete.DeleteResponseEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.extended.ExtendedRequestEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.extended.ExtendedResponseEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.modify.ModifyRequestEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.modify.ModifyResponseEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.modifyDn.ModifyDnRequestEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.modifyDn.ModifyDnResponseEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.search.SearchRequestEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.search.SearchResponseDoneEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.search.SearchResponseEntryEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.search.SearchResponseReferenceEncoder;
import org.apache.ldap.common.berlib.asn1.encoder.unbind.UnbindRequestEncoder;
import org.apache.ldap.common.message.AbandonRequest;
import org.apache.ldap.common.message.AddRequest;
import org.apache.ldap.common.message.AddResponse;
import org.apache.ldap.common.message.BindRequest;
import org.apache.ldap.common.message.BindResponse;
import org.apache.ldap.common.message.CompareRequest;
import org.apache.ldap.common.message.CompareResponse;
import org.apache.ldap.common.message.DeleteRequest;
import org.apache.ldap.common.message.DeleteResponse;
import org.apache.ldap.common.message.ExtendedRequest;
import org.apache.ldap.common.message.ExtendedResponse;
import org.apache.ldap.common.message.Message;
import org.apache.ldap.common.message.MessageTypeEnum;
import org.apache.ldap.common.message.ModifyDnRequest;
import org.apache.ldap.common.message.ModifyDnResponse;
import org.apache.ldap.common.message.ModifyRequest;
import org.apache.ldap.common.message.ModifyResponse;
import org.apache.ldap.common.message.SearchRequest;
import org.apache.ldap.common.message.SearchResponseDone;
import org.apache.ldap.common.message.SearchResponseEntry;
import org.apache.ldap.common.message.SearchResponseReference;
import org.apache.ldap.common.message.UnbindRequest;
/* loaded from: classes3.dex */
public class SnickersLdapEncoder implements StatefulEncoder {
    TupleEncodingVisitor encoder = new TupleEncodingVisitor();
    DeterminateLengthVisitor lengthVisitor = new DeterminateLengthVisitor();
    EncoderMonitor monitor;

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void encode(Object obj) throws EncoderException {
        TupleNode encode;
        Message message = (Message) obj;
        switch (message.getType().getValue()) {
            case 1073741824:
                encode = BindRequestEncoder.INSTANCE.encode((BindRequest) message);
                break;
            case MessageTypeEnum.BINDRESPONSE_VAL /* 1073741825 */:
                encode = BindResponseEncoder.INSTANCE.encode((BindResponse) message);
                break;
            case MessageTypeEnum.UNBINDREQUEST_VAL /* 1073741826 */:
                encode = UnbindRequestEncoder.INSTANCE.encode((UnbindRequest) message);
                break;
            case MessageTypeEnum.SEARCHREQUEST_VAL /* 1073741827 */:
                encode = SearchRequestEncoder.INSTANCE.encode((SearchRequest) message);
                break;
            case MessageTypeEnum.SEARCHRESENTRY_VAL /* 1073741828 */:
                encode = SearchResponseEntryEncoder.INSTANCE.encode((SearchResponseEntry) message);
                break;
            case MessageTypeEnum.SEARCHRESDONE_VAL /* 1073741829 */:
                encode = SearchResponseDoneEncoder.INSTANCE.encode((SearchResponseDone) message);
                break;
            case MessageTypeEnum.MODIFYREQUEST_VAL /* 1073741830 */:
                encode = ModifyRequestEncoder.INSTANCE.encode((ModifyRequest) message);
                break;
            case MessageTypeEnum.MODIFYRESPONSE_VAL /* 1073741831 */:
                encode = ModifyResponseEncoder.INSTANCE.encode((ModifyResponse) message);
                break;
            case MessageTypeEnum.ADDREQUEST_VAL /* 1073741832 */:
                encode = AddRequestEncoder.INSTANCE.encode((AddRequest) message);
                break;
            case MessageTypeEnum.ADDRESPONSE_VAL /* 1073741833 */:
                encode = AddResponseEncoder.INSTANCE.encode((AddResponse) message);
                break;
            case MessageTypeEnum.DELREQUEST_VAL /* 1073741834 */:
                encode = DeleteRequestEncoder.INSTANCE.encode((DeleteRequest) message);
                break;
            case MessageTypeEnum.DELRESPONSE_VAL /* 1073741835 */:
                encode = DeleteResponseEncoder.INSTANCE.encode((DeleteResponse) message);
                break;
            case MessageTypeEnum.MODDNREQUEST_VAL /* 1073741836 */:
                encode = ModifyDnRequestEncoder.INSTANCE.encode((ModifyDnRequest) message);
                break;
            case MessageTypeEnum.MODDNRESPONSE_VAL /* 1073741837 */:
                encode = ModifyDnResponseEncoder.INSTANCE.encode((ModifyDnResponse) message);
                break;
            case MessageTypeEnum.COMPAREREQUEST_VAL /* 1073741838 */:
                CompareRequestEncoder.INSTANCE.encode((CompareRequest) message);
            case MessageTypeEnum.COMPARERESPONSE_VAL /* 1073741839 */:
                encode = CompareResponseEncoder.INSTANCE.encode((CompareResponse) message);
                break;
            case MessageTypeEnum.ABANDONREQUEST_VAL /* 1073741840 */:
                encode = AbandonRequestEncoder.INSTANCE.encode((AbandonRequest) message);
                break;
            case 1073741841:
            case 1073741842:
            case 1073741844:
            case 1073741845:
            case 1073741846:
            default:
                IllegalArgumentException illegalArgumentException = new IllegalArgumentException(new StringBuffer("Unable to encode unrecognized object: ").append(obj).toString());
                EncoderMonitor encoderMonitor = this.monitor;
                if (encoderMonitor != null) {
                    encoderMonitor.error(this, illegalArgumentException);
                }
                throw illegalArgumentException;
            case MessageTypeEnum.SEARCHRESREF_VAL /* 1073741843 */:
                encode = SearchResponseReferenceEncoder.INSTANCE.encode((SearchResponseReference) message);
                break;
            case MessageTypeEnum.EXTENDEDREQ_VAL /* 1073741847 */:
                encode = ExtendedRequestEncoder.INSTANCE.encode((ExtendedRequest) message);
                break;
            case MessageTypeEnum.EXTENDEDRESP_VAL /* 1073741848 */:
                encode = ExtendedResponseEncoder.INSTANCE.encode((ExtendedResponse) message);
                break;
        }
        encode.accept(this.lengthVisitor);
        encode.accept(this.encoder);
        this.encoder.flush();
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void setCallback(EncoderCallback encoderCallback) {
        this.encoder.setCallback(encoderCallback);
        EncoderMonitor encoderMonitor = this.monitor;
        if (encoderMonitor != null) {
            encoderMonitor.callbackSet(this, null, encoderCallback);
        }
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void setEncoderMonitor(EncoderMonitor encoderMonitor) {
        this.monitor = encoderMonitor;
        this.encoder.setEncoderMonitor(encoderMonitor);
    }
}
