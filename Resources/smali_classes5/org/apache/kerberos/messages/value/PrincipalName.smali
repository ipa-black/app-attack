.class public Lorg/apache/kerberos/messages/value/PrincipalName;
.super Ljava/lang/Object;
.source "PrincipalName.java"


# instance fields
.field private _nameComponent:Ljava/lang/String;

.field private _nameType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/apache/kerberos/messages/value/PrincipalName;->_nameComponent:Ljava/lang/String;

    .line 26
    iput p2, p0, Lorg/apache/kerberos/messages/value/PrincipalName;->_nameType:I

    return-void
.end method


# virtual methods
.method public getNameComponent()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/PrincipalName;->_nameComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getNameType()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/apache/kerberos/messages/value/PrincipalName;->_nameType:I

    return v0
.end method
