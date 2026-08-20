.class public Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;
.super Ljava/lang/Object;
.source "BootstrapSchemaLoader.java"


# instance fields
.field private final cb:Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;

.field private registries:Ljava/lang/ThreadLocal;

.field private schemas:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader$1;

    invoke-direct {v0, p0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader$1;-><init>(Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;)V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->cb:Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;

    .line 59
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->schemas:Ljava/lang/ThreadLocal;

    .line 60
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->registries:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->register(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private getProducer(Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;Ljava/lang/String;)Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 314
    const-string v0, "Failed to create "

    .line 317
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getBaseClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 327
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    .line 332
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getDefaultBaseClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 340
    new-instance v3, Ljavax/naming/NamingException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Failed to load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v4, " for "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 342
    const-string p2, " schema using following classes: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 343
    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 340
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v3, v0}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 345
    throw v3

    .line 351
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 361
    new-instance p2, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 363
    throw p2

    :catch_3
    move-exception p1

    .line 355
    new-instance p2, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2, p1}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 357
    throw p2
.end method

.method private register(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->schemas:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;

    .line 216
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->registries:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;

    .line 218
    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 298
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ProducerTypeEnum is broke!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :pswitch_0
    check-cast p3, Lorg/apache/ldap/server/jndi/ServerDirObjectFactory;

    .line 294
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getObjectFactoryRegistry()Lorg/apache/ldap/server/schema/ObjectFactoryRegistry;

    move-result-object p1

    .line 295
    invoke-interface {p1, p3}, Lorg/apache/ldap/server/schema/ObjectFactoryRegistry;->register(Lorg/apache/ldap/server/jndi/ServerDirObjectFactory;)V

    goto/16 :goto_0

    .line 286
    :pswitch_1
    check-cast p3, Lorg/apache/ldap/server/jndi/ServerDirStateFactory;

    .line 288
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getStateFactoryRegistry()Lorg/apache/ldap/server/schema/StateFactoryRegistry;

    move-result-object p1

    .line 289
    invoke-interface {p1, p3}, Lorg/apache/ldap/server/schema/StateFactoryRegistry;->register(Lorg/apache/ldap/server/jndi/ServerDirStateFactory;)V

    goto/16 :goto_0

    .line 280
    :pswitch_2
    check-cast p3, Lorg/apache/ldap/common/schema/DITStructureRule;

    .line 282
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getDitStructureRuleRegistry()Lorg/apache/ldap/server/schema/DITStructureRuleRegistry;

    move-result-object p1

    .line 283
    invoke-interface {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lorg/apache/ldap/server/schema/DITStructureRuleRegistry;->register(Ljava/lang/String;Lorg/apache/ldap/common/schema/DITStructureRule;)V

    goto/16 :goto_0

    .line 274
    :pswitch_3
    check-cast p3, Lorg/apache/ldap/common/schema/NameForm;

    .line 276
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getNameFormRegistry()Lorg/apache/ldap/server/schema/NameFormRegistry;

    move-result-object p1

    .line 277
    invoke-interface {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lorg/apache/ldap/server/schema/NameFormRegistry;->register(Ljava/lang/String;Lorg/apache/ldap/common/schema/NameForm;)V

    goto/16 :goto_0

    .line 268
    :pswitch_4
    check-cast p3, Lorg/apache/ldap/common/schema/DITContentRule;

    .line 270
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getDitContentRuleRegistry()Lorg/apache/ldap/server/schema/DITContentRuleRegistry;

    move-result-object p1

    .line 271
    invoke-interface {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lorg/apache/ldap/server/schema/DITContentRuleRegistry;->register(Ljava/lang/String;Lorg/apache/ldap/common/schema/DITContentRule;)V

    goto/16 :goto_0

    .line 262
    :pswitch_5
    check-cast p3, Lorg/apache/ldap/common/schema/MatchingRuleUse;

    .line 264
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getMatchingRuleUseRegistry()Lorg/apache/ldap/server/schema/MatchingRuleUseRegistry;

    move-result-object p1

    .line 265
    invoke-interface {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lorg/apache/ldap/server/schema/MatchingRuleUseRegistry;->register(Ljava/lang/String;Lorg/apache/ldap/common/schema/MatchingRuleUse;)V

    goto :goto_0

    .line 256
    :pswitch_6
    check-cast p3, Lorg/apache/ldap/common/schema/ObjectClass;

    .line 258
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getObjectClassRegistry()Lorg/apache/ldap/server/schema/ObjectClassRegistry;

    move-result-object p1

    .line 259
    invoke-interface {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lorg/apache/ldap/server/schema/ObjectClassRegistry;->register(Ljava/lang/String;Lorg/apache/ldap/common/schema/ObjectClass;)V

    goto :goto_0

    .line 250
    :pswitch_7
    check-cast p3, Lorg/apache/ldap/common/schema/AttributeType;

    .line 252
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object p1

    .line 253
    invoke-interface {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->register(Ljava/lang/String;Lorg/apache/ldap/common/schema/AttributeType;)V

    goto :goto_0

    .line 244
    :pswitch_8
    check-cast p3, Lorg/apache/ldap/common/schema/MatchingRule;

    .line 246
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getMatchingRuleRegistry()Lorg/apache/ldap/server/schema/MatchingRuleRegistry;

    move-result-object p1

    .line 247
    invoke-interface {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lorg/apache/ldap/server/schema/MatchingRuleRegistry;->register(Ljava/lang/String;Lorg/apache/ldap/common/schema/MatchingRule;)V

    goto :goto_0

    .line 239
    :pswitch_9
    check-cast p3, Lorg/apache/ldap/common/schema/Syntax;

    .line 240
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getSyntaxRegistry()Lorg/apache/ldap/server/schema/SyntaxRegistry;

    move-result-object p1

    .line 241
    invoke-interface {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lorg/apache/ldap/server/schema/SyntaxRegistry;->register(Ljava/lang/String;Lorg/apache/ldap/common/schema/Syntax;)V

    goto :goto_0

    .line 233
    :pswitch_a
    check-cast p3, Lorg/apache/ldap/common/schema/SyntaxChecker;

    .line 235
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getSyntaxCheckerRegistry()Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;

    move-result-object p1

    .line 236
    invoke-interface {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;->register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/common/schema/SyntaxChecker;)V

    goto :goto_0

    .line 227
    :pswitch_b
    check-cast p3, Ljava/util/Comparator;

    .line 229
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getComparatorRegistry()Lorg/apache/ldap/server/schema/ComparatorRegistry;

    move-result-object p1

    .line 230
    invoke-interface {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/ldap/server/schema/ComparatorRegistry;->register(Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)V

    goto :goto_0

    .line 221
    :pswitch_c
    check-cast p3, Lorg/apache/ldap/common/schema/Normalizer;

    .line 223
    invoke-virtual {v1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getNormalizerRegistry()Lorg/apache/ldap/server/schema/NormalizerRegistry;

    move-result-object p1

    .line 224
    invoke-interface {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/ldap/server/schema/NormalizerRegistry;->register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ldap/common/schema/Normalizer;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final load(Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->registries:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->schemas:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 188
    invoke-static {}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 189
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    .line 192
    invoke-virtual {v2}, Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->getProducer(Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;Ljava/lang/String;)Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;

    move-result-object v2

    .line 193
    iget-object v3, p0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->cb:Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;

    invoke-interface {v2, p2, v3}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;->produce(Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;Lorg/apache/ldap/server/schema/bootstrap/ProducerCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final load([Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 76
    array-length v0, p1

    new-array v1, v0, [Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;

    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 78
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v0, :cond_1

    .line 99
    const-string p1, "system"

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;

    .line 100
    invoke-virtual {p0, v0, p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->load(Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 101
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-interface {v0}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 105
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;

    .line 108
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p0, v0, v3, p1, p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->loadDepsFirst(Ljava/util/Stack;Ljava/util/HashMap;Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 109
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_1

    .line 85
    :cond_1
    :try_start_0
    aget-object v5, p1, v4

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 86
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;

    aput-object v5, v1, v4

    .line 87
    invoke-interface {v5}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "problem loading/creating "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance v0, Ljavax/naming/NamingException;

    invoke-direct {v0, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p2}, Ljavax/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 94
    throw v0
.end method

.method public final loadDepsFirst(Ljava/util/Stack;Ljava/util/HashMap;Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 131
    invoke-interface {p3}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-interface {p3}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getDependencies()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 135
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 148
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 169
    invoke-virtual {p0, p3, p4}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->load(Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 170
    invoke-interface {p3}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void

    .line 150
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 155
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;

    .line 157
    invoke-interface {v2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 165
    invoke-virtual {p0, p1, p2, v2, p4}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->loadDepsFirst(Ljava/util/Stack;Ljava/util/HashMap;Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_3
    invoke-interface {v2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance p2, Ljavax/naming/NamingException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "schema dependency cycle detected: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 137
    :cond_4
    :goto_2
    invoke-virtual {p0, p3, p4}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchemaLoader;->load(Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    .line 138
    invoke-interface {p3}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapSchema;->getSchemaName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method
