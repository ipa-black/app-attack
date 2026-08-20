.class public Lorg/apache/kerberos/messages/value/LastRequest;
.super Ljava/lang/Object;
.source "LastRequest.java"


# instance fields
.field private _entries:[Lorg/apache/kerberos/messages/value/LastRequestEntry;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    new-array v0, v0, [Lorg/apache/kerberos/messages/value/LastRequestEntry;

    iput-object v0, p0, Lorg/apache/kerberos/messages/value/LastRequest;->_entries:[Lorg/apache/kerberos/messages/value/LastRequestEntry;

    .line 24
    new-instance v1, Lorg/apache/kerberos/messages/value/LastRequestEntry;

    sget-object v2, Lorg/apache/kerberos/messages/value/LastRequestType;->NONE:Lorg/apache/kerberos/messages/value/LastRequestType;

    new-instance v3, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-direct {v3}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/apache/kerberos/messages/value/LastRequestEntry;-><init>(Lorg/apache/kerberos/messages/value/LastRequestType;Lorg/apache/kerberos/messages/value/KerberosTime;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method

.method public constructor <init>([Lorg/apache/kerberos/messages/value/LastRequestEntry;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    new-array v0, v0, [Lorg/apache/kerberos/messages/value/LastRequestEntry;

    .line 28
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/LastRequest;->_entries:[Lorg/apache/kerberos/messages/value/LastRequestEntry;

    return-void
.end method


# virtual methods
.method public getEntries()[Lorg/apache/kerberos/messages/value/LastRequestEntry;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/LastRequest;->_entries:[Lorg/apache/kerberos/messages/value/LastRequestEntry;

    return-object v0
.end method
