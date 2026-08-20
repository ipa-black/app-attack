.class public Lorg/apache/asn1/ber/digester/BERDigester;
.super Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;
.source "BERDigester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;
    }
.end annotation


# static fields
.field public static final NO_TOP_TAG:I = 0xf000000


# instance fields
.field private booleanStack:Lorg/apache/commons/collections/primitives/BooleanStack;

.field private byteStack:Lorg/apache/commons/collections/primitives/ByteStack;

.field private charStack:Lorg/apache/commons/collections/primitives/CharStack;

.field private classLoader:Ljava/lang/ClassLoader;

.field private decoder:Lorg/apache/asn1/ber/BERDecoder;

.field private doubleStack:Lorg/apache/commons/collections/primitives/DoubleStack;

.field private floatStack:Lorg/apache/commons/collections/primitives/FloatStack;

.field private intStack:Lorg/apache/commons/collections/primitives/IntStack;

.field private longStack:Lorg/apache/commons/collections/primitives/LongStack;

.field private matched:Ljava/util/List;

.field private monitor:Lorg/apache/asn1/ber/digester/BERDigesterMonitor;

.field private objectStack:Lorg/apache/commons/collections/ArrayStack;

.field private root:Ljava/lang/Object;

.field private rules:Lorg/apache/asn1/ber/digester/Rules;

.field private shortStack:Lorg/apache/commons/collections/primitives/ShortStack;

.field private tagStack:Lorg/apache/commons/collections/primitives/IntStack;

.field private useContextClassLoader:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->classLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    .line 101
    iput-boolean v1, p0, Lorg/apache/asn1/ber/digester/BERDigester;->useContextClassLoader:Z

    .line 106
    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->root:Ljava/lang/Object;

    .line 108
    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->monitor:Lorg/apache/asn1/ber/digester/BERDigesterMonitor;

    .line 116
    new-instance v0, Lorg/apache/asn1/ber/digester/RulesBase;

    invoke-direct {v0}, Lorg/apache/asn1/ber/digester/RulesBase;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->rules:Lorg/apache/asn1/ber/digester/Rules;

    .line 117
    invoke-interface {v0, p0}, Lorg/apache/asn1/ber/digester/Rules;->setDigester(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 118
    new-instance v0, Lorg/apache/commons/collections/primitives/IntStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->tagStack:Lorg/apache/commons/collections/primitives/IntStack;

    .line 119
    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/ArrayStack;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->objectStack:Lorg/apache/commons/collections/ArrayStack;

    .line 120
    new-instance v0, Lorg/apache/commons/collections/primitives/BooleanStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/BooleanStack;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->booleanStack:Lorg/apache/commons/collections/primitives/BooleanStack;

    .line 121
    new-instance v0, Lorg/apache/commons/collections/primitives/CharStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/CharStack;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->charStack:Lorg/apache/commons/collections/primitives/CharStack;

    .line 122
    new-instance v0, Lorg/apache/commons/collections/primitives/ByteStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/ByteStack;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->byteStack:Lorg/apache/commons/collections/primitives/ByteStack;

    .line 123
    new-instance v0, Lorg/apache/commons/collections/primitives/ShortStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/ShortStack;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->shortStack:Lorg/apache/commons/collections/primitives/ShortStack;

    .line 124
    new-instance v0, Lorg/apache/commons/collections/primitives/IntStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->intStack:Lorg/apache/commons/collections/primitives/IntStack;

    .line 125
    new-instance v0, Lorg/apache/commons/collections/primitives/LongStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/LongStack;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->longStack:Lorg/apache/commons/collections/primitives/LongStack;

    .line 126
    new-instance v0, Lorg/apache/commons/collections/primitives/FloatStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/FloatStack;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->floatStack:Lorg/apache/commons/collections/primitives/FloatStack;

    .line 127
    new-instance v0, Lorg/apache/commons/collections/primitives/DoubleStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/primitives/DoubleStack;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->doubleStack:Lorg/apache/commons/collections/primitives/DoubleStack;

    .line 128
    new-instance v0, Lorg/apache/asn1/ber/BERDecoder;

    invoke-direct {v0}, Lorg/apache/asn1/ber/BERDecoder;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    .line 129
    new-instance v1, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;

    invoke-direct {v1, p0}, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;-><init>(Lorg/apache/asn1/ber/digester/BERDigester;)V

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/BERDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    .line 130
    new-instance v0, Lorg/apache/asn1/ber/digester/BERDigesterLoggingMonitor;

    invoke-direct {v0}, Lorg/apache/asn1/ber/digester/BERDigesterLoggingMonitor;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->monitor:Lorg/apache/asn1/ber/digester/BERDigesterMonitor;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/asn1/ber/digester/BERDigester;)Lorg/apache/commons/collections/primitives/IntStack;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->tagStack:Lorg/apache/commons/collections/primitives/IntStack;

    return-object p0
.end method

.method static synthetic access$102(Lorg/apache/asn1/ber/digester/BERDigester;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/BERDigester;->matched:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/asn1/ber/digester/BERDigester;)Lorg/apache/asn1/ber/digester/Rules;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->rules:Lorg/apache/asn1/ber/digester/Rules;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/asn1/ber/digester/BERDigester;Ljava/lang/Object;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->decodeOccurred(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addRule([ILorg/apache/asn1/ber/digester/Rule;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->rules:Lorg/apache/asn1/ber/digester/Rules;

    invoke-interface {v0, p1, p2}, Lorg/apache/asn1/ber/digester/Rules;->add([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 225
    invoke-interface {p2, p0}, Lorg/apache/asn1/ber/digester/Rule;->setDigester(Lorg/apache/asn1/ber/digester/BERDigester;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->root:Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->tagStack:Lorg/apache/commons/collections/primitives/IntStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/IntStack;->clear()V

    .line 248
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->objectStack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ArrayStack;->clear()V

    .line 249
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->booleanStack:Lorg/apache/commons/collections/primitives/BooleanStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/BooleanStack;->clear()V

    .line 250
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->byteStack:Lorg/apache/commons/collections/primitives/ByteStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ByteStack;->clear()V

    .line 251
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->shortStack:Lorg/apache/commons/collections/primitives/ShortStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ShortStack;->clear()V

    .line 252
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->intStack:Lorg/apache/commons/collections/primitives/IntStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/IntStack;->clear()V

    .line 253
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->longStack:Lorg/apache/commons/collections/primitives/LongStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/LongStack;->clear()V

    .line 254
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->floatStack:Lorg/apache/commons/collections/primitives/FloatStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/FloatStack;->clear()V

    .line 255
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->doubleStack:Lorg/apache/commons/collections/primitives/DoubleStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/DoubleStack;->clear()V

    return-void
.end method

.method public decode(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->decoder:Lorg/apache/asn1/ber/BERDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/BERDecoder;->decode(Ljava/lang/Object;)V

    return-void
.end method

.method fireFinishEvent()V
    .locals 4

    .line 1127
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->matched:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1131
    :goto_0
    iget-object v3, p0, Lorg/apache/asn1/ber/digester/BERDigester;->matched:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1135
    :try_start_0
    iget-object v3, p0, Lorg/apache/asn1/ber/digester/BERDigester;->matched:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/asn1/ber/digester/Rule;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 1136
    :try_start_1
    invoke-interface {v3}, Lorg/apache/asn1/ber/digester/Rule;->finish()V

    .line 1137
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/BERDigester;->monitor:Lorg/apache/asn1/ber/digester/BERDigesterMonitor;

    invoke-interface {v1, p0, v3}, Lorg/apache/asn1/ber/digester/BERDigesterMonitor;->ruleCompleted(Lorg/apache/asn1/ber/digester/BERDigester;Lorg/apache/asn1/ber/digester/Rule;)V

    .line 1138
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1147
    :goto_1
    iget-object v2, p0, Lorg/apache/asn1/ber/digester/BERDigester;->monitor:Lorg/apache/asn1/ber/digester/BERDigesterMonitor;

    const-string v3, "Rule.finish() threw error"

    invoke-interface {v2, p0, v1, v3, v0}, Lorg/apache/asn1/ber/digester/BERDigesterMonitor;->ruleFailed(Lorg/apache/asn1/ber/digester/BERDigester;Lorg/apache/asn1/ber/digester/Rule;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1148
    throw v0

    :catch_3
    move-exception v0

    .line 1142
    :goto_2
    iget-object v2, p0, Lorg/apache/asn1/ber/digester/BERDigester;->monitor:Lorg/apache/asn1/ber/digester/BERDigesterMonitor;

    const-string v3, "Rule.finish() threw exception"

    invoke-interface {v2, p0, v1, v3, v0}, Lorg/apache/asn1/ber/digester/BERDigesterMonitor;->ruleFailed(Lorg/apache/asn1/ber/digester/BERDigester;Lorg/apache/asn1/ber/digester/Rule;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1143
    throw v0

    :cond_0
    return-void
.end method

.method fireLengthEvent(I)V
    .locals 3

    .line 1053
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->matched:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1055
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 1059
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1062
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1064
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/digester/Rule;

    .line 1068
    :try_start_0
    invoke-interface {v1, p1}, Lorg/apache/asn1/ber/digester/Rule;->length(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1077
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->monitor:Lorg/apache/asn1/ber/digester/BERDigesterMonitor;

    const-string v2, "Rule.length() threw error"

    invoke-interface {v0, p0, v1, v2, p1}, Lorg/apache/asn1/ber/digester/BERDigesterMonitor;->ruleFailed(Lorg/apache/asn1/ber/digester/BERDigester;Lorg/apache/asn1/ber/digester/Rule;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1078
    throw p1

    :catch_1
    move-exception p1

    .line 1072
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->monitor:Lorg/apache/asn1/ber/digester/BERDigesterMonitor;

    const-string v2, "Rule.length() threw exception"

    invoke-interface {v0, p0, v1, v2, p1}, Lorg/apache/asn1/ber/digester/BERDigesterMonitor;->ruleFailed(Lorg/apache/asn1/ber/digester/BERDigester;Lorg/apache/asn1/ber/digester/Rule;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1073
    throw p1

    :cond_1
    return-void
.end method

.method fireTagEvent(IZLorg/apache/asn1/ber/TypeClass;)V
    .locals 2

    .line 1018
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->matched:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1020
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 1024
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1027
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1029
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/digester/Rule;

    .line 1033
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lorg/apache/asn1/ber/digester/Rule;->tag(IZLorg/apache/asn1/ber/TypeClass;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1042
    iget-object p2, p0, Lorg/apache/asn1/ber/digester/BERDigester;->monitor:Lorg/apache/asn1/ber/digester/BERDigesterMonitor;

    const-string p3, "Rule.tag() threw error"

    invoke-interface {p2, p0, v1, p3, p1}, Lorg/apache/asn1/ber/digester/BERDigesterMonitor;->ruleFailed(Lorg/apache/asn1/ber/digester/BERDigester;Lorg/apache/asn1/ber/digester/Rule;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1043
    throw p1

    :catch_1
    move-exception p1

    .line 1037
    iget-object p2, p0, Lorg/apache/asn1/ber/digester/BERDigester;->monitor:Lorg/apache/asn1/ber/digester/BERDigesterMonitor;

    const-string p3, "Rule.tag() threw exception"

    invoke-interface {p2, p0, v1, p3, p1}, Lorg/apache/asn1/ber/digester/BERDigesterMonitor;->ruleFailed(Lorg/apache/asn1/ber/digester/BERDigester;Lorg/apache/asn1/ber/digester/Rule;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1038
    throw p1

    :cond_1
    return-void
.end method

.method fireValueEvent(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1086
    const-string v0, "Rule.value() threw exception"

    .line 1088
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/BERDigester;->matched:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1090
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    .line 1094
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1097
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1099
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/digester/Rule;

    .line 1103
    :try_start_0
    invoke-interface {v2, p1}, Lorg/apache/asn1/ber/digester/Rule;->value(Ljava/nio/ByteBuffer;)V

    .line 1106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1115
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/BERDigester;->monitor:Lorg/apache/asn1/ber/digester/BERDigesterMonitor;

    invoke-interface {v1, p0, v2, v0, p1}, Lorg/apache/asn1/ber/digester/BERDigesterMonitor;->ruleFailed(Lorg/apache/asn1/ber/digester/BERDigester;Lorg/apache/asn1/ber/digester/Rule;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1116
    throw p1

    :catch_1
    move-exception p1

    .line 1110
    iget-object v1, p0, Lorg/apache/asn1/ber/digester/BERDigester;->monitor:Lorg/apache/asn1/ber/digester/BERDigesterMonitor;

    invoke-interface {v1, p0, v2, v0, p1}, Lorg/apache/asn1/ber/digester/BERDigesterMonitor;->ruleFailed(Lorg/apache/asn1/ber/digester/BERDigester;Lorg/apache/asn1/ber/digester/Rule;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1111
    throw p1

    :cond_1
    return-void
.end method

.method public getBooleanCount()I
    .locals 1

    .line 342
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->booleanStack:Lorg/apache/commons/collections/primitives/BooleanStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/BooleanStack;->size()I

    move-result v0

    return v0
.end method

.method public getByteCount()I
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->byteStack:Lorg/apache/commons/collections/primitives/ByteStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ByteStack;->size()I

    move-result v0

    return v0
.end method

.method public getCharCount()I
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->charStack:Lorg/apache/commons/collections/primitives/CharStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/CharStack;->size()I

    move-result v0

    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 952
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    return-object v0

    .line 957
    :cond_0
    iget-boolean v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->useContextClassLoader:Z

    if-eqz v0, :cond_1

    .line 959
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 968
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->objectStack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    return v0
.end method

.method public getDoubleCount()I
    .locals 1

    .line 804
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->doubleStack:Lorg/apache/commons/collections/primitives/DoubleStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/DoubleStack;->size()I

    move-result v0

    return v0
.end method

.method public getFloatCount()I
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->floatStack:Lorg/apache/commons/collections/primitives/FloatStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/FloatStack;->size()I

    move-result v0

    return v0
.end method

.method public getIntCount()I
    .locals 1

    .line 606
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->intStack:Lorg/apache/commons/collections/primitives/IntStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/IntStack;->size()I

    move-result v0

    return v0
.end method

.method public getLongCount()I
    .locals 1

    .line 672
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->longStack:Lorg/apache/commons/collections/primitives/LongStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/LongStack;->size()I

    move-result v0

    return v0
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1

    .line 867
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->root:Ljava/lang/Object;

    return-object v0
.end method

.method public getRules()Lorg/apache/asn1/ber/digester/Rules;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->rules:Lorg/apache/asn1/ber/digester/Rules;

    return-object v0
.end method

.method public getShortCount()I
    .locals 1

    .line 540
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->shortStack:Lorg/apache/commons/collections/primitives/ShortStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ShortStack;->size()I

    move-result v0

    return v0
.end method

.method public getTag(I)I
    .locals 1

    .line 911
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->tagStack:Lorg/apache/commons/collections/primitives/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/IntStack;->peek(I)I

    move-result p1

    return p1
.end method

.method public getTagCount()I
    .locals 1

    .line 896
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->tagStack:Lorg/apache/commons/collections/primitives/IntStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/IntStack;->size()I

    move-result v0

    return v0
.end method

.method public getTopTag()I
    .locals 1

    .line 926
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->tagStack:Lorg/apache/commons/collections/primitives/IntStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/IntStack;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/high16 v0, 0xf000000

    return v0

    .line 931
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->tagStack:Lorg/apache/commons/collections/primitives/IntStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/IntStack;->peek()I

    move-result v0

    return v0
.end method

.method public getUseContextClassLoader()Z
    .locals 1

    .line 990
    iget-boolean v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->useContextClassLoader:Z

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->objectStack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ArrayStack;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peek(I)Ljava/lang/Object;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->objectStack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/ArrayStack;->peek(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public peekBoolean()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->booleanStack:Lorg/apache/commons/collections/primitives/BooleanStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/BooleanStack;->peek()Z

    move-result v0

    return v0
.end method

.method public peekBoolean(I)Z
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->booleanStack:Lorg/apache/commons/collections/primitives/BooleanStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/BooleanStack;->peek(I)Z

    move-result p1

    return p1
.end method

.method public peekByte()B
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->byteStack:Lorg/apache/commons/collections/primitives/ByteStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ByteStack;->peek()B

    move-result v0

    return v0
.end method

.method public peekByte(I)B
    .locals 1

    .line 501
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->byteStack:Lorg/apache/commons/collections/primitives/ByteStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/ByteStack;->peek(I)B

    move-result p1

    return p1
.end method

.method public peekChar()C
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->charStack:Lorg/apache/commons/collections/primitives/CharStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/CharStack;->peek()C

    move-result v0

    return v0
.end method

.method public peekChar(I)C
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->charStack:Lorg/apache/commons/collections/primitives/CharStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/CharStack;->peek(I)C

    move-result p1

    return p1
.end method

.method public peekDouble()D
    .locals 2

    .line 816
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->doubleStack:Lorg/apache/commons/collections/primitives/DoubleStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/DoubleStack;->peek()D

    move-result-wide v0

    return-wide v0
.end method

.method public peekDouble(I)D
    .locals 2

    .line 831
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->doubleStack:Lorg/apache/commons/collections/primitives/DoubleStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/DoubleStack;->peek(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public peekFloat()F
    .locals 1

    .line 750
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->floatStack:Lorg/apache/commons/collections/primitives/FloatStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/FloatStack;->peek()F

    move-result v0

    return v0
.end method

.method public peekFloat(I)F
    .locals 1

    .line 765
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->floatStack:Lorg/apache/commons/collections/primitives/FloatStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/FloatStack;->peek(I)F

    move-result p1

    return p1
.end method

.method public peekInt()I
    .locals 1

    .line 618
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->intStack:Lorg/apache/commons/collections/primitives/IntStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/IntStack;->peek()I

    move-result v0

    return v0
.end method

.method public peekInt(I)I
    .locals 1

    .line 633
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->intStack:Lorg/apache/commons/collections/primitives/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/IntStack;->peek(I)I

    move-result p1

    return p1
.end method

.method public peekLong()J
    .locals 2

    .line 684
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->longStack:Lorg/apache/commons/collections/primitives/LongStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/LongStack;->peek()J

    move-result-wide v0

    return-wide v0
.end method

.method public peekLong(I)J
    .locals 2

    .line 699
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->longStack:Lorg/apache/commons/collections/primitives/LongStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/LongStack;->peek(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public peekShort()S
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->shortStack:Lorg/apache/commons/collections/primitives/ShortStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ShortStack;->peek()S

    move-result v0

    return v0
.end method

.method public peekShort(I)S
    .locals 1

    .line 567
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->shortStack:Lorg/apache/commons/collections/primitives/ShortStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/ShortStack;->peek(I)S

    move-result p1

    return p1
.end method

.method public pop()Ljava/lang/Object;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->objectStack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public popBoolean()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->booleanStack:Lorg/apache/commons/collections/primitives/BooleanStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/BooleanStack;->pop()Z

    move-result v0

    return v0
.end method

.method public popByte()B
    .locals 1

    .line 513
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->byteStack:Lorg/apache/commons/collections/primitives/ByteStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ByteStack;->pop()B

    move-result v0

    return v0
.end method

.method public popChar()C
    .locals 1

    .line 447
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->charStack:Lorg/apache/commons/collections/primitives/CharStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/CharStack;->pop()C

    move-result v0

    return v0
.end method

.method public popDouble()D
    .locals 2

    .line 843
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->doubleStack:Lorg/apache/commons/collections/primitives/DoubleStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/DoubleStack;->pop()D

    move-result-wide v0

    return-wide v0
.end method

.method public popFloat()F
    .locals 1

    .line 777
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->floatStack:Lorg/apache/commons/collections/primitives/FloatStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/FloatStack;->pop()F

    move-result v0

    return v0
.end method

.method public popInt()I
    .locals 1

    .line 645
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->intStack:Lorg/apache/commons/collections/primitives/IntStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/IntStack;->pop()I

    move-result v0

    return v0
.end method

.method public popLong()J
    .locals 2

    .line 711
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->longStack:Lorg/apache/commons/collections/primitives/LongStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/LongStack;->pop()J

    move-result-wide v0

    return-wide v0
.end method

.method public popShort()S
    .locals 1

    .line 579
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->shortStack:Lorg/apache/commons/collections/primitives/ShortStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/ShortStack;->pop()S

    move-result v0

    return v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->objectStack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ArrayStack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/BERDigester;->root:Ljava/lang/Object;

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->objectStack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/ArrayStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushBoolean(Z)V
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->booleanStack:Lorg/apache/commons/collections/primitives/BooleanStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/BooleanStack;->push(Z)Z

    return-void
.end method

.method public pushByte(B)V
    .locals 1

    .line 524
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->byteStack:Lorg/apache/commons/collections/primitives/ByteStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/ByteStack;->push(B)B

    return-void
.end method

.method public pushChar(C)V
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->charStack:Lorg/apache/commons/collections/primitives/CharStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/CharStack;->push(C)C

    return-void
.end method

.method public pushDouble(D)V
    .locals 1

    .line 854
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->doubleStack:Lorg/apache/commons/collections/primitives/DoubleStack;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/primitives/DoubleStack;->push(D)D

    return-void
.end method

.method public pushFloat(F)V
    .locals 1

    .line 788
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->floatStack:Lorg/apache/commons/collections/primitives/FloatStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/FloatStack;->push(F)F

    return-void
.end method

.method public pushInt(I)V
    .locals 1

    .line 656
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->intStack:Lorg/apache/commons/collections/primitives/IntStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/IntStack;->push(I)I

    return-void
.end method

.method public pushLong(J)V
    .locals 1

    .line 722
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->longStack:Lorg/apache/commons/collections/primitives/LongStack;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/primitives/LongStack;->push(J)J

    return-void
.end method

.method public pushShort(S)V
    .locals 1

    .line 590
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester;->shortStack:Lorg/apache/commons/collections/primitives/ShortStack;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/ShortStack;->push(S)S

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/BERDigester;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setRules(Lorg/apache/asn1/ber/digester/Rules;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/BERDigester;->rules:Lorg/apache/asn1/ber/digester/Rules;

    .line 880
    invoke-interface {p1, p0}, Lorg/apache/asn1/ber/digester/Rules;->setDigester(Lorg/apache/asn1/ber/digester/BERDigester;)V

    return-void
.end method

.method public setUseContextClassLoader(Z)V
    .locals 0

    .line 1005
    iput-boolean p1, p0, Lorg/apache/asn1/ber/digester/BERDigester;->useContextClassLoader:Z

    return-void
.end method
