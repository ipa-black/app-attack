.class public final Lorg/apache/ldap/server/authn/LdapPrincipal;
.super Ljava/lang/Object;
.source "LdapPrincipal.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field public static final ANONYMOUS:Lorg/apache/ldap/server/authn/LdapPrincipal;

.field private static final serialVersionUID:J = 0x3637363032323830L


# instance fields
.field private final name:Ljavax/naming/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/apache/ldap/server/authn/LdapPrincipal;

    invoke-direct {v0}, Lorg/apache/ldap/server/authn/LdapPrincipal;-><init>()V

    sput-object v0, Lorg/apache/ldap/server/authn/LdapPrincipal;->ANONYMOUS:Lorg/apache/ldap/server/authn/LdapPrincipal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {v0}, Lorg/apache/ldap/common/name/LdapName;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/authn/LdapPrincipal;->name:Ljavax/naming/Name;

    return-void
.end method

.method constructor <init>(Ljavax/naming/Name;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/ldap/server/authn/LdapPrincipal;->name:Ljavax/naming/Name;

    return-void
.end method


# virtual methods
.method public getDn()Ljavax/naming/Name;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/ldap/server/authn/LdapPrincipal;->name:Ljavax/naming/Name;

    invoke-interface {v0}, Ljavax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/naming/Name;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/ldap/server/authn/LdapPrincipal;->name:Ljavax/naming/Name;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
