.class public interface abstract Lorg/apache/ldap/server/db/TupleBrowser;
.super Ljava/lang/Object;
.source "TupleBrowser.java"


# virtual methods
.method public abstract getNext(Lorg/apache/ldap/server/db/Tuple;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getPrevious(Lorg/apache/ldap/server/db/Tuple;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation
.end method
