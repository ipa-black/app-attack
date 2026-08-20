.class public Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;
.super Ljava/lang/Object;
.source "SnickersLdapEncoder.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/StatefulEncoder;


# instance fields
.field encoder:Lorg/apache/asn1/ber/TupleEncodingVisitor;

.field lengthVisitor:Lorg/apache/asn1/ber/DeterminateLengthVisitor;

.field monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lorg/apache/asn1/ber/TupleEncodingVisitor;

    invoke-direct {v0}, Lorg/apache/asn1/ber/TupleEncodingVisitor;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->encoder:Lorg/apache/asn1/ber/TupleEncodingVisitor;

    .line 83
    new-instance v0, Lorg/apache/asn1/ber/DeterminateLengthVisitor;

    invoke-direct {v0}, Lorg/apache/asn1/ber/DeterminateLengthVisitor;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->lengthVisitor:Lorg/apache/asn1/ber/DeterminateLengthVisitor;

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/EncoderException;
        }
    .end annotation

    .line 88
    move-object v0, p1

    check-cast v0, Lorg/apache/ldap/common/message/Message;

    .line 91
    invoke-interface {v0}, Lorg/apache/ldap/common/message/Message;->getType()Lorg/apache/ldap/common/message/MessageTypeEnum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ldap/common/message/MessageTypeEnum;->getValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 192
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unable to encode unrecognized object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    if-eqz p1, :cond_0

    .line 196
    invoke-interface {p1, p0, v0}, Lorg/apache/asn1/codec/stateful/EncoderMonitor;->error(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 142
    :pswitch_1
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/extended/ExtendedResponseEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/extended/ExtendedResponseEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/ExtendedResponse;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/extended/ExtendedResponseEncoder;->encode(Lorg/apache/ldap/common/message/ExtendedResponse;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto/16 :goto_0

    .line 137
    :pswitch_2
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/extended/ExtendedRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/extended/ExtendedRequestEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/ExtendedRequest;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/extended/ExtendedRequestEncoder;->encode(Lorg/apache/ldap/common/message/ExtendedRequest;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto/16 :goto_0

    .line 182
    :pswitch_3
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseReferenceEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseReferenceEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/SearchResponseReference;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseReferenceEncoder;->encode(Lorg/apache/ldap/common/message/SearchResponseReference;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto/16 :goto_0

    .line 94
    :pswitch_4
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/abandon/AbandonRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/abandon/AbandonRequestEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/AbandonRequest;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/abandon/AbandonRequestEncoder;->encode(Lorg/apache/ldap/common/message/AbandonRequest;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto/16 :goto_0

    .line 119
    :pswitch_5
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/compare/CompareRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/compare/CompareRequestEncoder;

    move-object v1, v0

    check-cast v1, Lorg/apache/ldap/common/message/CompareRequest;

    invoke-virtual {p1, v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/compare/CompareRequestEncoder;->encode(Lorg/apache/ldap/common/message/CompareRequest;)Lorg/apache/asn1/ber/TupleNode;

    .line 123
    :pswitch_6
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/compare/CompareResponseEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/compare/CompareResponseEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/CompareResponse;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/compare/CompareResponseEncoder;->encode(Lorg/apache/ldap/common/message/CompareResponse;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto/16 :goto_0

    .line 162
    :pswitch_7
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/modifyDn/ModifyDnResponseEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/modifyDn/ModifyDnResponseEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/ModifyDnResponse;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/modifyDn/ModifyDnResponseEncoder;->encode(Lorg/apache/ldap/common/message/ModifyDnResponse;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto/16 :goto_0

    .line 157
    :pswitch_8
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/modifyDn/ModifyDnRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/modifyDn/ModifyDnRequestEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/ModifyDnRequest;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/modifyDn/ModifyDnRequestEncoder;->encode(Lorg/apache/ldap/common/message/ModifyDnRequest;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto/16 :goto_0

    .line 132
    :pswitch_9
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/delete/DeleteResponseEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/delete/DeleteResponseEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/DeleteResponse;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/delete/DeleteResponseEncoder;->encode(Lorg/apache/ldap/common/message/DeleteResponse;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto :goto_0

    .line 127
    :pswitch_a
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/delete/DeleteRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/delete/DeleteRequestEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/DeleteRequest;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/delete/DeleteRequestEncoder;->encode(Lorg/apache/ldap/common/message/DeleteRequest;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto :goto_0

    .line 104
    :pswitch_b
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/add/AddResponseEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/add/AddResponseEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/AddResponse;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/add/AddResponseEncoder;->encode(Lorg/apache/ldap/common/message/AddResponse;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto :goto_0

    .line 99
    :pswitch_c
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/add/AddRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/add/AddRequestEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/AddRequest;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/add/AddRequestEncoder;->encode(Lorg/apache/ldap/common/message/AddRequest;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto :goto_0

    .line 152
    :pswitch_d
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/modify/ModifyResponseEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/modify/ModifyResponseEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/ModifyResponse;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/modify/ModifyResponseEncoder;->encode(Lorg/apache/ldap/common/message/ModifyResponse;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto :goto_0

    .line 147
    :pswitch_e
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/modify/ModifyRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/modify/ModifyRequestEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/ModifyRequest;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/modify/ModifyRequestEncoder;->encode(Lorg/apache/ldap/common/message/ModifyRequest;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto :goto_0

    .line 172
    :pswitch_f
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseDoneEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseDoneEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/SearchResponseDone;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseDoneEncoder;->encode(Lorg/apache/ldap/common/message/SearchResponseDone;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto :goto_0

    .line 177
    :pswitch_10
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseEntryEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseEntryEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/SearchResponseEntry;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchResponseEntryEncoder;->encode(Lorg/apache/ldap/common/message/SearchResponseEntry;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto :goto_0

    .line 167
    :pswitch_11
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/SearchRequest;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/search/SearchRequestEncoder;->encode(Lorg/apache/ldap/common/message/SearchRequest;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto :goto_0

    .line 187
    :pswitch_12
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/unbind/UnbindRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/unbind/UnbindRequestEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/UnbindRequest;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/unbind/UnbindRequestEncoder;->encode(Lorg/apache/ldap/common/message/UnbindRequest;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto :goto_0

    .line 114
    :pswitch_13
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindResponseEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindResponseEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/BindResponse;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindResponseEncoder;->encode(Lorg/apache/ldap/common/message/BindResponse;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    goto :goto_0

    .line 109
    :pswitch_14
    sget-object p1, Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindRequestEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindRequestEncoder;

    check-cast v0, Lorg/apache/ldap/common/message/BindRequest;

    invoke-virtual {p1, v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/bind/BindRequestEncoder;->encode(Lorg/apache/ldap/common/message/BindRequest;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    .line 203
    :goto_0
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->lengthVisitor:Lorg/apache/asn1/ber/DeterminateLengthVisitor;

    invoke-interface {p1, v0}, Lorg/apache/asn1/ber/TupleNode;->accept(Lorg/apache/asn1/ber/TupleNodeVisitor;)V

    .line 206
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->encoder:Lorg/apache/asn1/ber/TupleEncodingVisitor;

    invoke-interface {p1, v0}, Lorg/apache/asn1/ber/TupleNode;->accept(Lorg/apache/asn1/ber/TupleNodeVisitor;)V

    .line 209
    iget-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->encoder:Lorg/apache/asn1/ber/TupleEncodingVisitor;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/TupleEncodingVisitor;->flush()V

    return-void

    .line 199
    :cond_0
    :goto_1
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->encoder:Lorg/apache/asn1/ber/TupleEncodingVisitor;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/TupleEncodingVisitor;->setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V

    .line 217
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 219
    invoke-interface {v0, p0, v1, p1}, Lorg/apache/asn1/codec/stateful/EncoderMonitor;->callbackSet(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Lorg/apache/asn1/codec/stateful/EncoderCallback;Lorg/apache/asn1/codec/stateful/EncoderCallback;)V

    :cond_0
    return-void
.end method

.method public setEncoderMonitor(Lorg/apache/asn1/codec/stateful/EncoderMonitor;)V
    .locals 1

    .line 227
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    .line 228
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/encoder/SnickersLdapEncoder;->encoder:Lorg/apache/asn1/ber/TupleEncodingVisitor;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/TupleEncodingVisitor;->setEncoderMonitor(Lorg/apache/asn1/codec/stateful/EncoderMonitor;)V

    return-void
.end method
