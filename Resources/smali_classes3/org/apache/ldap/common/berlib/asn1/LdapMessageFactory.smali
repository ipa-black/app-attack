.class public final Lorg/apache/ldap/common/berlib/asn1/LdapMessageFactory;
.super Ljava/lang/Object;
.source "LdapMessageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(II)Lorg/apache/ldap/common/message/Message;
    .locals 1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_2

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 145
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "shouldn\'t happen - if it does then we have issues"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :pswitch_0
    new-instance p0, Lorg/apache/ldap/common/message/AbandonRequestImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/AbandonRequestImpl;-><init>(I)V

    goto/16 :goto_0

    .line 133
    :pswitch_1
    new-instance p0, Lorg/apache/ldap/common/message/CompareResponseImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/CompareResponseImpl;-><init>(I)V

    goto/16 :goto_0

    .line 130
    :pswitch_2
    new-instance p0, Lorg/apache/ldap/common/message/CompareRequestImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/CompareRequestImpl;-><init>(I)V

    goto/16 :goto_0

    .line 127
    :pswitch_3
    new-instance p0, Lorg/apache/ldap/common/message/ModifyDnResponseImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/ModifyDnResponseImpl;-><init>(I)V

    goto/16 :goto_0

    .line 124
    :pswitch_4
    new-instance p0, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/ModifyDnRequestImpl;-><init>(I)V

    goto :goto_0

    .line 121
    :pswitch_5
    new-instance p0, Lorg/apache/ldap/common/message/DeleteResponseImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/DeleteResponseImpl;-><init>(I)V

    goto :goto_0

    .line 118
    :pswitch_6
    new-instance p0, Lorg/apache/ldap/common/message/DeleteRequestImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/DeleteRequestImpl;-><init>(I)V

    goto :goto_0

    .line 115
    :pswitch_7
    new-instance p0, Lorg/apache/ldap/common/message/AddResponseImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/AddResponseImpl;-><init>(I)V

    goto :goto_0

    .line 112
    :pswitch_8
    new-instance p0, Lorg/apache/ldap/common/message/AddRequestImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/AddRequestImpl;-><init>(I)V

    goto :goto_0

    .line 109
    :pswitch_9
    new-instance p0, Lorg/apache/ldap/common/message/ModifyResponseImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/ModifyResponseImpl;-><init>(I)V

    goto :goto_0

    .line 106
    :pswitch_a
    new-instance p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/ModifyRequestImpl;-><init>(I)V

    goto :goto_0

    .line 100
    :pswitch_b
    new-instance p0, Lorg/apache/ldap/common/message/SearchResponseDoneImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/SearchResponseDoneImpl;-><init>(I)V

    goto :goto_0

    .line 97
    :pswitch_c
    new-instance p0, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;-><init>(I)V

    goto :goto_0

    .line 94
    :pswitch_d
    new-instance p0, Lorg/apache/ldap/common/message/SearchRequestImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/SearchRequestImpl;-><init>(I)V

    goto :goto_0

    .line 91
    :pswitch_e
    new-instance p0, Lorg/apache/ldap/common/message/UnbindRequestImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/UnbindRequestImpl;-><init>(I)V

    goto :goto_0

    .line 88
    :pswitch_f
    new-instance p0, Lorg/apache/ldap/common/message/BindResponseImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/BindResponseImpl;-><init>(I)V

    goto :goto_0

    .line 85
    :pswitch_10
    new-instance p0, Lorg/apache/ldap/common/message/BindRequestImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/BindRequestImpl;-><init>(I)V

    goto :goto_0

    .line 142
    :cond_0
    new-instance p0, Lorg/apache/ldap/common/message/ExtendedResponseImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/ExtendedResponseImpl;-><init>(I)V

    goto :goto_0

    .line 139
    :cond_1
    new-instance p0, Lorg/apache/ldap/common/message/ExtendedRequestImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/ExtendedRequestImpl;-><init>(I)V

    goto :goto_0

    .line 103
    :cond_2
    new-instance p0, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;-><init>(I)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final create(Lorg/apache/ldap/common/berlib/asn1/LdapTag;I)Lorg/apache/ldap/common/message/Message;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getTagId()I

    move-result p0

    invoke-static {p0, p1}, Lorg/apache/ldap/common/berlib/asn1/LdapMessageFactory;->create(II)Lorg/apache/ldap/common/message/Message;

    move-result-object p0

    return-object p0
.end method
