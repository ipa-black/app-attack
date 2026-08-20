.class public Lorg/apache/ldap/server/authn/GenericAuthenticatorContext;
.super Ljava/lang/Object;
.source "GenericAuthenticatorContext.java"

# interfaces
.implements Lorg/apache/ldap/server/authn/AuthenticatorContext;


# instance fields
.field private allowAnonymous:Z

.field private partitionNexus:Lorg/apache/ldap/server/PartitionNexus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorContext;->allowAnonymous:Z

    return-void
.end method


# virtual methods
.method public getAllowAnonymous()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorContext;->allowAnonymous:Z

    return v0
.end method

.method public getPartitionNexus()Lorg/apache/ldap/server/PartitionNexus;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorContext;->partitionNexus:Lorg/apache/ldap/server/PartitionNexus;

    return-object v0
.end method

.method public setAllowAnonymous(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorContext;->allowAnonymous:Z

    return-void
.end method

.method public setPartitionNexus(Lorg/apache/ldap/server/PartitionNexus;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/apache/ldap/server/authn/GenericAuthenticatorContext;->partitionNexus:Lorg/apache/ldap/server/PartitionNexus;

    return-void
.end method
