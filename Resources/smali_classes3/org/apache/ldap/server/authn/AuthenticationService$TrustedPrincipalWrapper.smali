.class public final Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;
.super Ljava/lang/Object;
.source "AuthenticationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/authn/AuthenticationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrustedPrincipalWrapper"
.end annotation


# instance fields
.field private final principal:Lorg/apache/ldap/server/authn/LdapPrincipal;

.field final synthetic this$0:Lorg/apache/ldap/server/authn/AuthenticationService;


# direct methods
.method private constructor <init>(Lorg/apache/ldap/server/authn/AuthenticationService;Lorg/apache/ldap/server/authn/LdapPrincipal;)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;->this$0:Lorg/apache/ldap/server/authn/AuthenticationService;

    .line 325
    iput-object p2, p0, Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;->principal:Lorg/apache/ldap/server/authn/LdapPrincipal;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ldap/server/authn/AuthenticationService;Lorg/apache/ldap/server/authn/LdapPrincipal;Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;)V
    .locals 0

    .line 323
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;-><init>(Lorg/apache/ldap/server/authn/AuthenticationService;Lorg/apache/ldap/server/authn/LdapPrincipal;)V

    return-void
.end method


# virtual methods
.method public getPrincipal()Lorg/apache/ldap/server/authn/LdapPrincipal;
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/apache/ldap/server/authn/AuthenticationService$TrustedPrincipalWrapper;->principal:Lorg/apache/ldap/server/authn/LdapPrincipal;

    return-object v0
.end method
