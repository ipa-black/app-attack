.class public Lorg/apache/kerberos/messages/AuthenticationReply;
.super Lorg/apache/kerberos/messages/KdcReply;
.source "AuthenticationReply.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    sget-object v0, Lorg/apache/kerberos/messages/MessageType;->KRB_AS_REP:Lorg/apache/kerberos/messages/MessageType;

    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/KdcReply;-><init>(Lorg/apache/kerberos/messages/MessageType;)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/kerberos/messages/value/PreAuthenticationData;Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/components/Ticket;Lorg/apache/kerberos/messages/value/EncryptedData;)V
    .locals 6

    .line 35
    sget-object v5, Lorg/apache/kerberos/messages/MessageType;->KRB_AS_REP:Lorg/apache/kerberos/messages/MessageType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/kerberos/messages/KdcReply;-><init>([Lorg/apache/kerberos/messages/value/PreAuthenticationData;Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/components/Ticket;Lorg/apache/kerberos/messages/value/EncryptedData;Lorg/apache/kerberos/messages/MessageType;)V

    return-void
.end method
