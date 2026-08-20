.class public Lorg/apache/kerberos/messages/components/EncTgsRepPart;
.super Lorg/apache/kerberos/messages/components/EncKdcRepPart;
.source "EncTgsRepPart.java"


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/value/LastRequest;ILorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/TicketFlags;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/HostAddresses;)V
    .locals 13

    .line 36
    sget-object v12, Lorg/apache/kerberos/messages/components/MessageComponentType;->KRB_ENC_TGS_REP_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lorg/apache/kerberos/messages/components/EncKdcRepPart;-><init>(Lorg/apache/kerberos/messages/value/EncryptionKey;Lorg/apache/kerberos/messages/value/LastRequest;ILorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/TicketFlags;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Lorg/apache/kerberos/messages/value/KerberosTime;Ljavax/security/auth/kerberos/KerberosPrincipal;Lorg/apache/kerberos/messages/value/HostAddresses;Lorg/apache/kerberos/messages/components/MessageComponentType;)V

    return-void
.end method
