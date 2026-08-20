.class public Lorg/apache/kerberos/messages/value/LastRequestEntry;
.super Ljava/lang/Object;
.source "LastRequestEntry.java"


# instance fields
.field private _lastRequestType:Lorg/apache/kerberos/messages/value/LastRequestType;

.field private _lastRequestValue:Lorg/apache/kerberos/messages/value/KerberosTime;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/value/LastRequestType;Lorg/apache/kerberos/messages/value/KerberosTime;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/LastRequestEntry;->_lastRequestType:Lorg/apache/kerberos/messages/value/LastRequestType;

    .line 26
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/LastRequestEntry;->_lastRequestValue:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method


# virtual methods
.method public getLastRequestType()Lorg/apache/kerberos/messages/value/LastRequestType;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/LastRequestEntry;->_lastRequestType:Lorg/apache/kerberos/messages/value/LastRequestType;

    return-object v0
.end method

.method public getLastRequestValue()Lorg/apache/kerberos/messages/value/KerberosTime;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/LastRequestEntry;->_lastRequestValue:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-object v0
.end method
