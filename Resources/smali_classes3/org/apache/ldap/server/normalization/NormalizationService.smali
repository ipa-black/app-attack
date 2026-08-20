.class public Lorg/apache/ldap/server/normalization/NormalizationService;
.super Lorg/apache/ldap/server/interceptor/BaseInterceptor;
.source "NormalizationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/server/normalization/NormalizationService$PerComponentNormalizer;
    }
.end annotation


# instance fields
.field private parser:Lorg/apache/ldap/common/name/DnParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init(Lorg/apache/ldap/server/interceptor/InterceptorContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lorg/apache/ldap/server/interceptor/InterceptorContext;->getGlobalRegistries()Lorg/apache/ldap/server/schema/GlobalRegistries;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/GlobalRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object p1

    .line 49
    new-instance v0, Lorg/apache/ldap/common/name/DnParser;

    new-instance v1, Lorg/apache/ldap/server/normalization/NormalizationService$PerComponentNormalizer;

    invoke-direct {v1, p0, p1}, Lorg/apache/ldap/server/normalization/NormalizationService$PerComponentNormalizer;-><init>(Lorg/apache/ldap/server/normalization/NormalizationService;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;)V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/name/DnParser;-><init>(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V

    iput-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Add;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Add;->getNormalizedName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/Add;->setNormalizedName(Ljavax/naming/Name;)V

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Add;)V

    return-void

    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Delete;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Delete;->getName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/Delete;->setName(Ljavax/naming/Name;)V

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Delete;)V

    return-void

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/GetMatchedDN;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/GetMatchedDN;->getName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/GetMatchedDN;->setName(Ljavax/naming/Name;)V

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/GetMatchedDN;)V

    return-void

    :catchall_0
    move-exception p1

    .line 217
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/GetSuffix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/GetSuffix;->getName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/GetSuffix;->setName(Ljavax/naming/Name;)V

    .line 228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/GetSuffix;)V

    return-void

    :catchall_0
    move-exception p1

    .line 228
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/HasEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/HasEntry;->getName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/HasEntry;->setName(Ljavax/naming/Name;)V

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/HasEntry;)V

    return-void

    :catchall_0
    move-exception p1

    .line 157
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/IsSuffix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/IsSuffix;->getName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/IsSuffix;->setName(Ljavax/naming/Name;)V

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/IsSuffix;)V

    return-void

    :catchall_0
    move-exception p1

    .line 168
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/List;->getBaseName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/List;->setBaseName(Ljavax/naming/Name;)V

    .line 179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/List;)V

    return-void

    :catchall_0
    move-exception p1

    .line 179
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Lookup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Lookup;->getName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/Lookup;->setName(Ljavax/naming/Name;)V

    .line 190
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Lookup;)V

    return-void

    :catchall_0
    move-exception p1

    .line 190
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/LookupWithAttrIds;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->getName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;->setName(Ljavax/naming/Name;)V

    .line 201
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/LookupWithAttrIds;)V

    return-void

    :catchall_0
    move-exception p1

    .line 201
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Modify;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Modify;->getName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/Modify;->setName(Ljavax/naming/Name;)V

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Modify;)V

    return-void

    :catchall_0
    move-exception p1

    .line 87
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyMany;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/ModifyMany;->getName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/ModifyMany;->setName(Ljavax/naming/Name;)V

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyMany;)V

    return-void

    :catchall_0
    move-exception p1

    .line 98
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyRN;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/ModifyRN;->getName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/ModifyRN;->setName(Ljavax/naming/Name;)V

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyRN;)V

    return-void

    :catchall_0
    move-exception p1

    .line 109
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Move;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Move;->getName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/Move;->setName(Ljavax/naming/Name;)V

    .line 124
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Move;->getNewParentName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/Move;->setNewParentName(Ljavax/naming/Name;)V

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Move;)V

    return-void

    :catchall_0
    move-exception p1

    .line 120
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/MoveAndModifyRN;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;->getName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;->setName(Ljavax/naming/Name;)V

    .line 137
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;->getNewParentName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;->setNewParentName(Ljavax/naming/Name;)V

    .line 133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/MoveAndModifyRN;)V

    return-void

    :catchall_0
    move-exception p1

    .line 133
    monitor-exit v0

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Search;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lorg/apache/ldap/server/normalization/NormalizationService;->parser:Lorg/apache/ldap/common/name/DnParser;

    invoke-virtual {p2}, Lorg/apache/ldap/server/invocation/Search;->getBaseName()Ljavax/naming/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ldap/common/name/DnParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ldap/server/invocation/Search;->setBaseName(Ljavax/naming/Name;)V

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-super {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Search;)V

    return-void

    :catchall_0
    move-exception p1

    .line 146
    monitor-exit v0

    throw p1
.end method
