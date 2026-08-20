.class Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;
.super Ljava/lang/Object;
.source "JndiProvider.java"

# interfaces
.implements Lorg/apache/ldap/server/PartitionNexus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/jndi/JndiProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PartitionNexusImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ldap/server/jndi/JndiProvider;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/jndi/JndiProvider;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/Add;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/ldap/server/invocation/Add;-><init>(Ljava/lang/String;Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    invoke-static {v0}, Lorg/apache/ldap/server/jndi/JndiProvider;->access$0(Lorg/apache/ldap/server/jndi/JndiProvider;)Lorg/apache/ldap/server/RootNexus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ldap/server/RootNexus;->close()V

    return-void
.end method

.method public delete(Ljavax/naming/Name;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/Delete;

    invoke-direct {v1, p1}, Lorg/apache/ldap/server/invocation/Delete;-><init>(Ljavax/naming/Name;)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    return-void
.end method

.method public getLdapContext()Ljavax/naming/ldap/LdapContext;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    invoke-static {v0}, Lorg/apache/ldap/server/jndi/JndiProvider;->access$0(Lorg/apache/ldap/server/jndi/JndiProvider;)Lorg/apache/ldap/server/RootNexus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ldap/server/RootNexus;->getLdapContext()Ljavax/naming/ldap/LdapContext;

    move-result-object v0

    return-object v0
.end method

.method public getMatchedDn(Ljavax/naming/Name;Z)Ljavax/naming/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/GetMatchedDN;

    invoke-direct {v1, p1, p2}, Lorg/apache/ldap/server/invocation/GetMatchedDN;-><init>(Ljavax/naming/Name;Z)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/Name;

    return-object p1
.end method

.method public getSuffix(Ljavax/naming/Name;Z)Ljavax/naming/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/GetSuffix;

    invoke-direct {v1, p1, p2}, Lorg/apache/ldap/server/invocation/GetSuffix;-><init>(Ljavax/naming/Name;Z)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/Name;

    return-object p1
.end method

.method public hasEntry(Ljavax/naming/Name;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 247
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v2, Lorg/apache/ldap/server/invocation/HasEntry;

    invoke-direct {v2, p1}, Lorg/apache/ldap/server/invocation/HasEntry;-><init>(Ljavax/naming/Name;)V

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isClosed()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    invoke-static {v0}, Lorg/apache/ldap/server/jndi/JndiProvider;->access$0(Lorg/apache/ldap/server/jndi/JndiProvider;)Lorg/apache/ldap/server/RootNexus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ldap/server/RootNexus;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isSuffix(Ljavax/naming/Name;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 251
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v2, Lorg/apache/ldap/server/invocation/IsSuffix;

    invoke-direct {v2, p1}, Lorg/apache/ldap/server/invocation/IsSuffix;-><init>(Ljavax/naming/Name;)V

    invoke-virtual {v1, v2}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public list(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/List;

    invoke-direct {v1, p1}, Lorg/apache/ldap/server/invocation/List;-><init>(Ljavax/naming/Name;)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/NamingEnumeration;

    return-object p1
.end method

.method public listSuffixes(Z)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/ListSuffixes;

    invoke-direct {v1, p1}, Lorg/apache/ldap/server/invocation/ListSuffixes;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    return-object p1
.end method

.method public lookup(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/Lookup;

    invoke-direct {v1, p1}, Lorg/apache/ldap/server/invocation/Lookup;-><init>(Ljavax/naming/Name;)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    return-object p1
.end method

.method public lookup(Ljavax/naming/Name;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;

    invoke-direct {v1, p1, p2}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;-><init>(Ljavax/naming/Name;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attributes;

    return-object p1
.end method

.method public modify(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/Modify;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/ldap/server/invocation/Modify;-><init>(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    return-void
.end method

.method public modify(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/ModifyMany;

    invoke-direct {v1, p1, p2}, Lorg/apache/ldap/server/invocation/ModifyMany;-><init>(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    return-void
.end method

.method public modifyRn(Ljavax/naming/Name;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/ModifyRN;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/ldap/server/invocation/ModifyRN;-><init>(Ljavax/naming/Name;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    return-void
.end method

.method public move(Ljavax/naming/Name;Ljavax/naming/Name;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/Move;

    invoke-direct {v1, p1, p2}, Lorg/apache/ldap/server/invocation/Move;-><init>(Ljavax/naming/Name;Ljavax/naming/Name;)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    return-void
.end method

.method public move(Ljavax/naming/Name;Ljavax/naming/Name;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;-><init>(Ljavax/naming/Name;Ljavax/naming/Name;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    return-void
.end method

.method public register(Lorg/apache/ldap/server/ContextPartition;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    invoke-static {v0}, Lorg/apache/ldap/server/jndi/JndiProvider;->access$0(Lorg/apache/ldap/server/jndi/JndiProvider;)Lorg/apache/ldap/server/RootNexus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/RootNexus;->register(Lorg/apache/ldap/server/ContextPartition;)V

    return-void
.end method

.method public search(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    new-instance v1, Lorg/apache/ldap/server/invocation/Search;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/apache/ldap/server/invocation/Search;-><init>(Ljavax/naming/Name;Ljava/util/Map;Lorg/apache/ldap/common/filter/ExprNode;Ljavax/naming/directory/SearchControls;)V

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/jndi/JndiProvider;->invoke(Lorg/apache/ldap/server/invocation/Invocation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/NamingEnumeration;

    return-object p1
.end method

.method public sync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    invoke-static {v0}, Lorg/apache/ldap/server/jndi/JndiProvider;->access$0(Lorg/apache/ldap/server/jndi/JndiProvider;)Lorg/apache/ldap/server/RootNexus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ldap/server/RootNexus;->sync()V

    return-void
.end method

.method public unregister(Lorg/apache/ldap/server/ContextPartition;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/apache/ldap/server/jndi/JndiProvider$PartitionNexusImpl;->this$0:Lorg/apache/ldap/server/jndi/JndiProvider;

    invoke-static {v0}, Lorg/apache/ldap/server/jndi/JndiProvider;->access$0(Lorg/apache/ldap/server/jndi/JndiProvider;)Lorg/apache/ldap/server/RootNexus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/RootNexus;->unregister(Lorg/apache/ldap/server/ContextPartition;)V

    return-void
.end method
