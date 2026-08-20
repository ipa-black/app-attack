.class final Lio/bidmachine/OrtbUtils$Printer;
.super Ljava/lang/Object;
.source "OrtbUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/OrtbUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Printer"
.end annotation


# instance fields
.field escapeNonAscii:Z

.field singleLineMode:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lio/bidmachine/OrtbUtils$Printer;->singleLineMode:Z

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lio/bidmachine/OrtbUtils$Printer;->escapeNonAscii:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/OrtbUtils$1;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lio/bidmachine/OrtbUtils$Printer;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/OrtbUtils$Printer;Lcom/explorestack/protobuf/MessageOrBuilder;Lio/bidmachine/OrtbUtils$TextGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Lio/bidmachine/OrtbUtils$Printer;->print(Lcom/explorestack/protobuf/MessageOrBuilder;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    return-void
.end method

.method static synthetic access$600(Lio/bidmachine/OrtbUtils$Printer;Lcom/explorestack/protobuf/UnknownFieldSet;Lio/bidmachine/OrtbUtils$TextGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Lio/bidmachine/OrtbUtils$Printer;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    return-void
.end method

.method private print(Lcom/explorestack/protobuf/MessageOrBuilder;Lio/bidmachine/OrtbUtils$TextGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v1, p2}, Lio/bidmachine/OrtbUtils$Printer;->printField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/bidmachine/OrtbUtils$Printer;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    return-void
.end method

.method private printField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/OrtbUtils$TextGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 169
    invoke-direct {p0, p1, v0, p3}, Lio/bidmachine/OrtbUtils$Printer;->printSingleField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/OrtbUtils$Printer;->printSingleField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    :cond_1
    return-void
.end method

.method private printFieldValue(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/OrtbUtils$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    sget-object v0, Lio/bidmachine/OrtbUtils$1;->$SwitchMap$com$explorestack$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "\""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 300
    :pswitch_0
    check-cast p2, Lcom/explorestack/protobuf/Message;

    invoke-direct {p0, p2, p3}, Lio/bidmachine/OrtbUtils$Printer;->print(Lcom/explorestack/protobuf/MessageOrBuilder;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    goto/16 :goto_2

    .line 296
    :pswitch_1
    check-cast p2, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 286
    :pswitch_2
    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 287
    instance-of p1, p2, Lcom/explorestack/protobuf/ByteString;

    if-eqz p1, :cond_0

    .line 288
    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_0
    check-cast p2, [B

    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 293
    :goto_0
    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 278
    :pswitch_3
    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 279
    iget-boolean p1, p0, Lio/bidmachine/OrtbUtils$Printer;->escapeNonAscii:Z

    if-eqz p1, :cond_1

    .line 280
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 282
    :cond_1
    check-cast p2, Ljava/lang/String;

    .line 281
    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormat;->escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string v1, "\\n"

    .line 282
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 279
    :goto_1
    invoke-virtual {p3, p1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 275
    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/explorestack/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 271
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/explorestack/protobuf/TextFormat;->unsignedToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 267
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private printSingleField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/OrtbUtils$TextGenerator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const-string v0, "["

    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 191
    :goto_0
    const-string v0, "]"

    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 192
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 198
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_4

    .line 199
    iget-boolean v0, p0, Lio/bidmachine/OrtbUtils$Printer;->singleLineMode:Z

    if-eqz v0, :cond_3

    .line 200
    const-string v0, " { "

    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 202
    :cond_3
    const-string v0, " {\n"

    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {p3}, Lio/bidmachine/OrtbUtils$TextGenerator;->indent()V

    goto :goto_2

    .line 206
    :cond_4
    const-string v0, ": "

    invoke-virtual {p3, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 209
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v2, "\n"

    if-ne v0, v1, :cond_7

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    instance-of v0, p2, Lcom/explorestack/protobuf/Any;

    const-string v1, "}"

    if-eqz v0, :cond_6

    .line 212
    check-cast p2, Lcom/explorestack/protobuf/Any;

    .line 213
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 215
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 217
    invoke-static {}, Lio/bidmachine/OrtbUtils;->access$300()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 219
    :try_start_0
    const-string v7, "bidmachine"

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v6

    invoke-static {v6, p1}, Lio/bidmachine/OrtbUtils;->access$400(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 227
    :cond_5
    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_9

    .line 228
    invoke-virtual {p3}, Lio/bidmachine/OrtbUtils$TextGenerator;->indent()V

    .line 229
    invoke-virtual {p3, p1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {p3}, Lio/bidmachine/OrtbUtils$TextGenerator;->outdent()V

    .line 231
    invoke-virtual {p3, v1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p3, v2}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 235
    :cond_6
    check-cast p2, Lcom/explorestack/protobuf/MessageOrBuilder;

    invoke-static {p2, p1}, Lio/bidmachine/OrtbUtils;->access$400(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_9

    .line 237
    invoke-virtual {p3, p1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {p3}, Lio/bidmachine/OrtbUtils$TextGenerator;->outdent()V

    .line 239
    invoke-virtual {p3, v1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p3, v2}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 244
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/OrtbUtils$Printer;->printFieldValue(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    .line 245
    iget-boolean p1, p0, Lio/bidmachine/OrtbUtils$Printer;->singleLineMode:Z

    if-eqz p1, :cond_8

    .line 246
    const-string p1, " "

    invoke-virtual {p3, p1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 248
    :cond_8
    invoke-virtual {p3, v2}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_5
    return-void
.end method

.method private printUnknownField(IILjava/util/List;Lio/bidmachine/OrtbUtils$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "*>;",
            "Lio/bidmachine/OrtbUtils$TextGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 341
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 342
    const-string v1, ": "

    invoke-virtual {p4, v1}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 343
    invoke-static {p2, v0, p4}, Lio/bidmachine/OrtbUtils;->access$500(ILjava/lang/Object;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    .line 344
    iget-boolean v0, p0, Lio/bidmachine/OrtbUtils$Printer;->singleLineMode:Z

    if-eqz v0, :cond_0

    const-string v0, " "

    goto :goto_1

    :cond_0
    const-string v0, "\n"

    :goto_1
    invoke-virtual {p4, v0}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lio/bidmachine/OrtbUtils$TextGenerator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 309
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 310
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet$Field;

    const/4 v3, 0x0

    .line 311
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getVarintList()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, p2}, Lio/bidmachine/OrtbUtils$Printer;->printUnknownField(IILjava/util/List;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    const/4 v3, 0x5

    .line 312
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getFixed32List()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, p2}, Lio/bidmachine/OrtbUtils$Printer;->printUnknownField(IILjava/util/List;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    const/4 v3, 0x1

    .line 313
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getFixed64List()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, p2}, Lio/bidmachine/OrtbUtils$Printer;->printUnknownField(IILjava/util/List;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    const/4 v3, 0x2

    .line 314
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getLengthDelimitedList()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, p2}, Lio/bidmachine/OrtbUtils$Printer;->printUnknownField(IILjava/util/List;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    .line 316
    invoke-virtual {v2}, Lcom/explorestack/protobuf/UnknownFieldSet$Field;->getGroupList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 317
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 318
    iget-boolean v3, p0, Lio/bidmachine/OrtbUtils$Printer;->singleLineMode:Z

    if-eqz v3, :cond_1

    .line 319
    const-string v3, " { "

    invoke-virtual {p2, v3}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 321
    :cond_1
    const-string v3, " {\n"

    invoke-virtual {p2, v3}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {p2}, Lio/bidmachine/OrtbUtils$TextGenerator;->indent()V

    .line 325
    :goto_1
    invoke-direct {p0, v2, p2}, Lio/bidmachine/OrtbUtils$Printer;->printUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;Lio/bidmachine/OrtbUtils$TextGenerator;)V

    .line 326
    iget-boolean v2, p0, Lio/bidmachine/OrtbUtils$Printer;->singleLineMode:Z

    if-eqz v2, :cond_2

    .line 327
    const-string v2, "} "

    invoke-virtual {p2, v2}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p2}, Lio/bidmachine/OrtbUtils$TextGenerator;->outdent()V

    .line 330
    const-string v2, "}\n"

    invoke-virtual {p2, v2}, Lio/bidmachine/OrtbUtils$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setEscapeNonAscii(Z)Lio/bidmachine/OrtbUtils$Printer;
    .locals 0

    .line 152
    iput-boolean p1, p0, Lio/bidmachine/OrtbUtils$Printer;->escapeNonAscii:Z

    return-object p0
.end method

.method private setSingleLineMode(Z)Lio/bidmachine/OrtbUtils$Printer;
    .locals 0

    .line 147
    iput-boolean p1, p0, Lio/bidmachine/OrtbUtils$Printer;->singleLineMode:Z

    return-object p0
.end method
