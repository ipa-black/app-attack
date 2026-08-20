.class public Lorg/apache/ldap/common/message/BindRequestImpl;
.super Lorg/apache/ldap/common/message/AbstractRequest;
.source "BindRequestImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/BindRequest;


# instance fields
.field private credentials:[B

.field private isSimple:Z

.field private isVersion3:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 59
    sget-object v0, Lorg/apache/ldap/common/message/BindRequestImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/common/message/AbstractRequest;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;Z)V

    .line 38
    const-string p1, ""

    iput-object p1, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->name:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->isSimple:Z

    .line 44
    iput-boolean v1, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->isVersion3:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 240
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 245
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/BindRequest;

    .line 247
    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindRequest;->isSimple()Z

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/message/BindRequestImpl;->isSimple()Z

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 252
    :cond_2
    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindRequest;->isVersion3()Z

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/message/BindRequestImpl;->isVersion3()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 257
    :cond_3
    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/message/BindRequestImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 262
    :cond_4
    invoke-interface {p1}, Lorg/apache/ldap/common/message/BindRequest;->getCredentials()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/ldap/common/message/BindRequestImpl;->getCredentials()[B

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/ldap/common/util/ArrayUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getCredentials()[B
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->credentials:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Lorg/apache/ldap/common/message/MessageTypeEnum;
    .locals 1

    .line 229
    sget-object v0, Lorg/apache/ldap/common/message/BindRequestImpl;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-object v0
.end method

.method public getSimple()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->isSimple:Z

    return v0
.end method

.method public getVersion3()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->isVersion3:Z

    return v0
.end method

.method public isSimple()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->isSimple:Z

    return v0
.end method

.method public isVersion3()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->isVersion3:Z

    return v0
.end method

.method public setCredentials([B)V
    .locals 1

    .line 126
    const-string v0, "Attempt to alter auth. cred. of locked BindRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/BindRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->credentials:[B

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 158
    const-string v0, "Attempt to alter auth. DN of locked BindRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/BindRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->name:Ljava/lang/String;

    return-void
.end method

.method public setSimple(Z)V
    .locals 1

    .line 100
    const-string v0, "Attempt to alter auth. mode of locked BindRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/BindRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 101
    iput-boolean p1, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->isSimple:Z

    return-void
.end method

.method public setVersion3(Z)V
    .locals 1

    .line 211
    const-string v0, "Attempt to alter proto. version of locked BindRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/BindRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 212
    iput-boolean p1, p0, Lorg/apache/ldap/common/message/BindRequestImpl;->isVersion3:Z

    return-void
.end method
