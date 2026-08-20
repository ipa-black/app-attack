.class public Lorg/apache/kerberos/store/JndiPrincipalStoreImpl;
.super Ljava/lang/Object;
.source "JndiPrincipalStoreImpl.java"

# interfaces
.implements Lorg/apache/kerberos/store/PrincipalStore;


# static fields
.field public static final KDC_STORE_SEARCHBASE:Ljava/lang/String; = "kdc.store.searchbase"


# instance fields
.field private ctx:Ljavax/naming/ldap/LdapContext;

.field private searchBase:Ljavax/naming/Name;


# direct methods
.method public constructor <init>(Ljavax/naming/ldap/LdapContext;Ljavax/naming/Name;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/kerberos/store/JndiPrincipalStoreImpl;->ctx:Ljavax/naming/ldap/LdapContext;

    .line 54
    iput-object p2, p0, Lorg/apache/kerberos/store/JndiPrincipalStoreImpl;->searchBase:Ljavax/naming/Name;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/kerberos/store/ContextOperation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/apache/kerberos/store/JndiPrincipalStoreImpl;->ctx:Ljavax/naming/ldap/LdapContext;

    iget-object v1, p0, Lorg/apache/kerberos/store/JndiPrincipalStoreImpl;->searchBase:Ljavax/naming/Name;

    invoke-interface {p1, v0, v1}, Lorg/apache/kerberos/store/ContextOperation;->execute(Ljavax/naming/directory/DirContext;Ljavax/naming/Name;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getContext()Ljavax/naming/ldap/LdapContext;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/kerberos/store/JndiPrincipalStoreImpl;->ctx:Ljavax/naming/ldap/LdapContext;

    return-object v0
.end method

.method protected getSearchBase()Ljavax/naming/Name;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/kerberos/store/JndiPrincipalStoreImpl;->searchBase:Ljavax/naming/Name;

    return-object v0
.end method
