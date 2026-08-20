.class public Lantlr/preprocessor/PreprocessorLexer;
.super Lantlr/CharScanner;
.source "PreprocessorLexer.java"

# interfaces
.implements Lantlr/preprocessor/PreprocessorTokenTypes;
.implements Lantlr/TokenStream;


# static fields
.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_1:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_10:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_2:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_3:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_4:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_5:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_6:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_7:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_8:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_9:Lantlr/collections/impl/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1285
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 1292
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    .line 1299
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    .line 1306
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    .line 1311
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_4()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    .line 1319
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_5()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    .line 1326
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_6()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    .line 1334
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_7()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    .line 1342
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_8:Lantlr/collections/impl/BitSet;

    .line 1347
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_9()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_9:Lantlr/collections/impl/BitSet;

    .line 1352
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_10()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_10:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 38
    new-instance v0, Lantlr/LexerSharedInputState;

    invoke-direct {v0, p1}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    invoke-direct {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;-><init>(Lantlr/LexerSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lantlr/LexerSharedInputState;)V
    .locals 3

    .line 41
    invoke-direct {p0, p1}, Lantlr/CharScanner;-><init>(Lantlr/LexerSharedInputState;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lantlr/CharScanner;->caseSensitiveLiterals:Z

    .line 43
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->setCaseSensitive(Z)V

    .line 44
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    .line 45
    iget-object p1, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "public"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p1, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "class"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object p1, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "throws"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p1, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "catch"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p1, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "private"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object p1, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "extends"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p1, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "protected"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "returns"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "tokens"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p1, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "exception"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 32
    new-instance v0, Lantlr/ByteBuffer;

    invoke-direct {v0, p1}, Lantlr/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 35
    new-instance v0, Lantlr/CharBuffer;

    invoke-direct {v0, p1}, Lantlr/CharBuffer;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method private static final mk_tokenSet_0()[J
    .locals 1

    const/4 v0, 0x5

    .line 1282
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x100002600L    # 2.122000597E-314
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_1()[J
    .locals 4

    const/16 v0, 0x8

    .line 1287
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x20000000008L

    .line 1288
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v2, -0x1

    .line 1289
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final mk_tokenSet_10()[J
    .locals 1

    const/4 v0, 0x5

    .line 1349
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x800100002600L
        0x800000000000000L
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_2()[J
    .locals 4

    const/16 v0, 0x8

    .line 1294
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x800020000000008L

    .line 1295
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v2, -0x1

    .line 1296
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final mk_tokenSet_3()[J
    .locals 4

    const/16 v0, 0x8

    .line 1301
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x800000000000008L

    .line 1302
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v2, -0x1

    .line 1303
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final mk_tokenSet_4()[J
    .locals 1

    const/4 v0, 0x5

    .line 1308
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x100002600L    # 2.122000597E-314
        0x1000000000000000L
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_5()[J
    .locals 4

    const/16 v0, 0x8

    .line 1313
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x800838400002408L

    .line 1314
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, -0x800000000000001L

    .line 1315
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v2, -0x1

    .line 1316
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final mk_tokenSet_6()[J
    .locals 4

    const/16 v0, 0x8

    .line 1321
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x8000000008L

    .line 1322
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v2, -0x1

    .line 1323
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final mk_tokenSet_7()[J
    .locals 4

    const/16 v0, 0x8

    .line 1328
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x400000008L

    .line 1329
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, -0x10000001

    .line 1330
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v2, -0x1

    .line 1331
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final mk_tokenSet_8()[J
    .locals 4

    const/16 v0, 0x8

    .line 1336
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x8000000008L

    .line 1337
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, -0x10000001

    .line 1338
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v2, -0x1

    .line 1339
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final mk_tokenSet_9()[J
    .locals 1

    const/4 v0, 0x5

    .line 1344
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x800500002600L
        0x800000000000000L
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final mACTION(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7b

    .line 524
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    :goto_0
    const/4 v2, 0x1

    .line 529
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_0

    goto/16 :goto_1

    .line 530
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v3, v5, :cond_1

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_2

    :cond_1
    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_2

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_2

    .line 531
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    goto :goto_0

    .line 533
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_3

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_3

    .line 534
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mACTION(Z)V

    goto :goto_0

    .line 536
    :cond_3
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v5, 0x27

    if-ne v3, v5, :cond_4

    sget-object v3, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 537
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mCHAR_LITERAL(Z)V

    goto :goto_0

    .line 539
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v5, 0x2f

    if-ne v3, v5, :cond_6

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v10, 0x2a

    if-eq v3, v10, :cond_5

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-ne v3, v5, :cond_6

    .line 540
    :cond_5
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    goto :goto_0

    .line 542
    :cond_6
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_7

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_7

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_7

    .line 543
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    goto/16 :goto_0

    .line 545
    :cond_7
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_8

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-gt v2, v7, :cond_8

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-lt v2, v8, :cond_8

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-gt v2, v7, :cond_8

    const v2, 0xffff

    .line 546
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->matchNot(C)V

    goto/16 :goto_0

    .line 554
    :cond_8
    :goto_1
    invoke-virtual {p0, v4}, Lantlr/CharScanner;->match(C)V

    if-eqz p1, :cond_9

    const/4 p1, 0x6

    .line 556
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 557
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    .line 559
    :goto_2
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mALT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 324
    :goto_0
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 325
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->mELEMENT(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x1b

    .line 334
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 335
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 337
    :goto_1
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mARG_ACTION(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1241
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5b

    .line 1245
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    :goto_0
    const/4 v2, 0x1

    .line 1250
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_0

    goto/16 :goto_1

    .line 1251
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-ne v3, v1, :cond_1

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_1

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_1

    .line 1252
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mARG_ACTION(Z)V

    goto :goto_0

    .line 1254
    :cond_1
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v9, 0xa

    if-eq v3, v9, :cond_2

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v9, 0xd

    if-ne v3, v9, :cond_3

    :cond_2
    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_3

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_3

    .line 1255
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    goto :goto_0

    .line 1257
    :cond_3
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v9, 0x27

    if-ne v3, v9, :cond_4

    sget-object v3, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v9

    invoke-virtual {v3, v9}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1258
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mCHAR_LITERAL(Z)V

    goto :goto_0

    .line 1260
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v9, 0x22

    if-ne v3, v9, :cond_5

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_5

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_5

    .line 1261
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    goto :goto_0

    .line 1263
    :cond_5
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_6

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_6

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_6

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_6

    const v2, 0xffff

    .line 1264
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->matchNot(C)V

    goto/16 :goto_0

    .line 1272
    :cond_6
    :goto_1
    invoke-virtual {p0, v4}, Lantlr/CharScanner;->match(C)V

    if-eqz p1, :cond_7

    const/16 p1, 0x13

    .line 1274
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1275
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 1277
    :goto_2
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mASSIGN_RHS(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 970
    iget-object v1, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    const/16 v2, 0x3d

    .line 971
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->match(C)V

    .line 972
    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    :goto_0
    const/4 v1, 0x1

    .line 977
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0x3b

    const/16 v4, 0xd

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    .line 978
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v5, 0x22

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-ne v2, v5, :cond_1

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-lt v2, v8, :cond_1

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-gt v2, v7, :cond_1

    .line 979
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    goto :goto_0

    .line 981
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v5, 0x27

    if-ne v2, v5, :cond_2

    sget-object v2, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v5

    invoke-virtual {v2, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 982
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mCHAR_LITERAL(Z)V

    goto :goto_0

    .line 984
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_3

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_4

    :cond_3
    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-lt v2, v8, :cond_4

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-gt v2, v7, :cond_4

    .line 985
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    goto :goto_0

    .line 987
    :cond_4
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-lt v2, v8, :cond_5

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_5

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_5

    invoke-virtual {p0, v9}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_5

    const v1, 0xffff

    .line 988
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->matchNot(C)V

    goto :goto_0

    .line 996
    :cond_5
    :goto_1
    invoke-virtual {p0, v3}, Lantlr/CharScanner;->match(C)V

    if-eqz p1, :cond_6

    .line 998
    invoke-virtual {p0, v4}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 999
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 1001
    :goto_2
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mBANG(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x21

    .line 653
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    .line 655
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 656
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 658
    :goto_0
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mCHAR_LITERAL(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x27

    .line 596
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    const/4 v2, 0x1

    .line 598
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 599
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->mESC(Z)V

    goto :goto_0

    .line 601
    :cond_0
    sget-object v3, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_8:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 602
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->matchNot(C)V

    .line 609
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    if-eqz p1, :cond_1

    const/16 p1, 0x24

    .line 611
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 612
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 614
    :goto_1
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void

    .line 605
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method public final mCOMMA(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2c

    .line 679
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    .line 681
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 682
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 684
    :goto_0
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mCOMMENT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 495
    iget-object p1, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {p1}, Lantlr/ANTLRStringBuffer;->length()I

    const/4 p1, 0x1

    .line 500
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    .line 501
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->mSL_COMMENT(Z)V

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_1

    .line 504
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->mML_COMMENT(Z)V

    :goto_0
    const/4 p1, 0x0

    .line 516
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void

    .line 507
    :cond_1
    new-instance v0, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, p1}, Lantlr/CharScanner;->LA(I)C

    move-result p1

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v0
.end method

.method protected final mCURLY_BLOCK_SCARF(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 926
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7b

    .line 930
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    :goto_0
    const/4 v1, 0x1

    .line 935
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    .line 936
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_2

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_2

    .line 937
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    goto :goto_0

    .line 939
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v4, 0x22

    if-ne v2, v4, :cond_3

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_3

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_3

    .line 940
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    goto :goto_0

    .line 942
    :cond_3
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v4, 0x27

    if-ne v2, v4, :cond_4

    sget-object v2, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 943
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mCHAR_LITERAL(Z)V

    goto :goto_0

    .line 945
    :cond_4
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_6

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v9, 0x2a

    if-eq v2, v9, :cond_5

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_6

    .line 946
    :cond_5
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    goto :goto_0

    .line 948
    :cond_6
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_7

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, v6, :cond_7

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-lt v1, v7, :cond_7

    invoke-virtual {p0, v8}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, v6, :cond_7

    const v1, 0xffff

    .line 949
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->matchNot(C)V

    goto/16 :goto_0

    .line 957
    :cond_7
    :goto_1
    invoke-virtual {p0, v3}, Lantlr/CharScanner;->match(C)V

    if-eqz p1, :cond_8

    const/16 p1, 0x1e

    .line 959
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 960
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 962
    :goto_2
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mDIGIT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1191
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 1195
    invoke-virtual {p0, v1, v2}, Lantlr/CharScanner;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0x27

    .line 1197
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1198
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1200
    :goto_0
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mELEMENT(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 446
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v2, v3, :cond_6

    const/16 v3, 0xd

    if-eq v2, v3, :cond_6

    const/16 v3, 0x22

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_4

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1

    .line 478
    sget-object v2, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->match(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    .line 484
    :cond_0
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 469
    :cond_1
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mSUBRULE_BLOCK(Z)V

    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mCHAR_LITERAL(Z)V

    goto :goto_0

    .line 454
    :cond_3
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mACTION(Z)V

    goto :goto_0

    .line 449
    :cond_4
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    goto :goto_0

    .line 459
    :cond_5
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    goto :goto_0

    .line 474
    :cond_6
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    :goto_0
    if-eqz p1, :cond_7

    const/16 p1, 0x1c

    .line 488
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 489
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 491
    :goto_1
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mESC(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5c

    .line 1068
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    const/4 v2, 0x1

    .line 1070
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_10

    const/16 v4, 0x27

    if-eq v3, v4, :cond_f

    if-eq v3, v1, :cond_e

    const/16 v1, 0x66

    if-eq v3, v1, :cond_d

    const/16 v1, 0x6e

    if-eq v3, v1, :cond_c

    const/16 v1, 0x72

    if-eq v3, v1, :cond_b

    const/16 v1, 0x77

    if-eq v3, v1, :cond_a

    const/16 v1, 0x61

    if-eq v3, v1, :cond_9

    const/16 v1, 0x62

    if-eq v3, v1, :cond_8

    const/16 v1, 0x74

    if-eq v3, v1, :cond_7

    const/16 v1, 0x75

    const/4 v4, 0x0

    if-eq v3, v1, :cond_6

    const/16 v1, 0x39

    const/16 v5, 0x30

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x3

    packed-switch v3, :pswitch_data_0

    .line 1179
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v3, 0x34

    const/16 v9, 0x37

    .line 1153
    invoke-virtual {p0, v3, v9}, Lantlr/CharScanner;->matchRange(CC)V

    .line 1156
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_0

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-gt v3, v1, :cond_0

    invoke-virtual {p0, v6}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_0

    invoke-virtual {p0, v6}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_0

    .line 1157
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mDIGIT(Z)V

    goto/16 :goto_0

    .line 1159
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_1

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_1

    goto/16 :goto_0

    .line 1162
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_1
    const/16 v3, 0x33

    .line 1124
    invoke-virtual {p0, v5, v3}, Lantlr/CharScanner;->matchRange(CC)V

    .line 1127
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_4

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-gt v3, v1, :cond_4

    invoke-virtual {p0, v6}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_4

    invoke-virtual {p0, v6}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_4

    .line 1128
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mDIGIT(Z)V

    .line 1130
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_2

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-gt v3, v1, :cond_2

    invoke-virtual {p0, v6}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_2

    invoke-virtual {p0, v6}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_2

    .line 1131
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mDIGIT(Z)V

    goto/16 :goto_0

    .line 1133
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_3

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_3

    goto/16 :goto_0

    .line 1136
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 1141
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_5

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_5

    goto :goto_0

    .line 1144
    :cond_5
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 1170
    :cond_6
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    .line 1171
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mXDIGIT(Z)V

    .line 1172
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mXDIGIT(Z)V

    .line 1173
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mXDIGIT(Z)V

    .line 1174
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mXDIGIT(Z)V

    goto :goto_0

    .line 1083
    :cond_7
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    goto :goto_0

    .line 1088
    :cond_8
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    goto :goto_0

    .line 1103
    :cond_9
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    goto :goto_0

    .line 1098
    :cond_a
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    goto :goto_0

    .line 1078
    :cond_b
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    goto :goto_0

    .line 1073
    :cond_c
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    goto :goto_0

    .line 1093
    :cond_d
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    goto :goto_0

    .line 1118
    :cond_e
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    goto :goto_0

    .line 1113
    :cond_f
    invoke-virtual {p0, v4}, Lantlr/CharScanner;->match(C)V

    goto :goto_0

    .line 1108
    :cond_10
    invoke-virtual {p0, v4}, Lantlr/CharScanner;->match(C)V

    :goto_0
    if-eqz p1, :cond_11

    const/16 p1, 0x26

    .line 1184
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1185
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_11
    const/4 p1, 0x0

    .line 1187
    :goto_1
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final mID(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 838
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x61

    const/16 v5, 0x5a

    const/16 v6, 0x41

    const/16 v7, 0x5f

    packed-switch v2, :pswitch_data_0

    .line 868
    :pswitch_0
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 847
    :pswitch_1
    invoke-virtual {p0, v4, v3}, Lantlr/CharScanner;->matchRange(CC)V

    goto :goto_0

    .line 863
    :pswitch_2
    invoke-virtual {p0, v7}, Lantlr/CharScanner;->match(C)V

    goto :goto_0

    .line 858
    :pswitch_3
    invoke-virtual {p0, v6, v5}, Lantlr/CharScanner;->matchRange(CC)V

    .line 875
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-eq v2, v7, :cond_1

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    .line 917
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lantlr/CharScanner;->testLiteralsTable(Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq v1, p1, :cond_0

    .line 919
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 920
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 922
    :goto_1
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void

    .line 884
    :pswitch_4
    invoke-virtual {p0, v4, v3}, Lantlr/CharScanner;->matchRange(CC)V

    goto :goto_0

    .line 895
    :pswitch_5
    invoke-virtual {p0, v6, v5}, Lantlr/CharScanner;->matchRange(CC)V

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x30

    const/16 v8, 0x39

    .line 907
    invoke-virtual {p0, v2, v8}, Lantlr/CharScanner;->matchRange(CC)V

    goto :goto_0

    .line 900
    :cond_1
    invoke-virtual {p0, v7}, Lantlr/CharScanner;->match(C)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x61
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final mID_OR_KEYWORD(Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 708
    iget-object v1, v0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    .line 713
    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->mID(Z)V

    .line 714
    iget-object v3, v0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    .line 715
    invoke-virtual {v3}, Lantlr/Token;->getType()I

    move-result v4

    .line 717
    sget-object v5, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_9:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v6

    const/16 v8, 0xff

    const/4 v9, 0x3

    const/16 v11, 0x20

    const/16 v12, 0xd

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/4 v15, 0x2

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    invoke-virtual {v0, v15}, Lantlr/CharScanner;->LA(I)C

    move-result v6

    if-lt v6, v9, :cond_7

    invoke-virtual {v0, v15}, Lantlr/CharScanner;->LA(I)C

    move-result v6

    if-gt v6, v8, :cond_7

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v6

    const-string v10, "header"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 719
    sget-object v3, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v15}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    invoke-virtual {v5, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 720
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {v0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    invoke-virtual {v5, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v15}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-lt v3, v9, :cond_6

    invoke-virtual {v0, v15}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-gt v3, v8, :cond_6

    .line 730
    :goto_0
    invoke-virtual {v0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-eq v3, v14, :cond_3

    if-eq v3, v13, :cond_3

    if-eq v3, v12, :cond_3

    if-eq v3, v11, :cond_3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 743
    :cond_1
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/CharScanner;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/CharScanner;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 733
    :cond_2
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    .line 750
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-eq v3, v14, :cond_5

    if-eq v3, v13, :cond_5

    if-eq v3, v12, :cond_5

    if-eq v3, v11, :cond_5

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_4

    .line 768
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mACTION(Z)V

    const/4 v4, 0x5

    goto/16 :goto_4

    .line 758
    :cond_4
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    goto :goto_1

    .line 753
    :cond_5
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    goto :goto_1

    .line 725
    :cond_6
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/CharScanner;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/CharScanner;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 771
    :cond_7
    sget-object v5, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_10:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v0, v15}, Lantlr/CharScanner;->LA(I)C

    move-result v6

    if-lt v6, v9, :cond_a

    invoke-virtual {v0, v15}, Lantlr/CharScanner;->LA(I)C

    move-result v6

    if-gt v6, v8, :cond_a

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v6

    const-string v8, "tokens"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 775
    :goto_2
    invoke-virtual {v0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-eq v3, v14, :cond_9

    if-eq v3, v13, :cond_9

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_9

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_8

    .line 793
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mCURLY_BLOCK_SCARF(Z)V

    const/16 v4, 0xb

    goto :goto_4

    .line 783
    :cond_8
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    goto :goto_2

    .line 778
    :cond_9
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    goto :goto_2

    .line 796
    :cond_a
    invoke-virtual {v0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v5, "options"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 800
    :goto_3
    invoke-virtual {v0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    if-eq v3, v14, :cond_c

    if-eq v3, v13, :cond_c

    if-eq v3, v12, :cond_c

    if-eq v3, v11, :cond_c

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_b

    const/16 v3, 0x7b

    .line 818
    invoke-virtual {v0, v3}, Lantlr/CharScanner;->match(C)V

    const/16 v4, 0xc

    goto :goto_4

    :cond_b
    const/16 v3, 0x7b

    .line 808
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    goto :goto_3

    :cond_c
    const/16 v3, 0x7b

    const/16 v5, 0x2f

    .line 803
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    goto :goto_3

    :cond_d
    :goto_4
    if-eqz p1, :cond_e

    const/4 v2, -0x1

    if-eq v4, v2, :cond_e

    .line 826
    invoke-virtual {v0, v4}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object v2

    .line 827
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v4

    iget-object v5, v0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    .line 829
    :goto_5
    iput-object v2, v0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mML_COMMENT(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1033
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 1037
    const-string v1, "/*"

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    .line 1042
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0x2a

    const/4 v4, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 1043
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    const/16 v5, 0xff

    const/4 v6, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0, v4}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_2

    invoke-virtual {p0, v4}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-gt v2, v5, :cond_2

    const/4 v1, 0x0

    .line 1044
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    goto :goto_0

    .line 1046
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_3

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, v5, :cond_3

    invoke-virtual {p0, v4}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-lt v1, v6, :cond_3

    invoke-virtual {p0, v4}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, v5, :cond_3

    const v1, 0xffff

    .line 1047
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->matchNot(C)V

    goto :goto_0

    .line 1055
    :cond_3
    :goto_1
    const-string v1, "*/"

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const/16 p1, 0x23

    .line 1057
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1058
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 1060
    :goto_2
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mNEWLINE(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 623
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-ne v2, v4, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 624
    invoke-virtual {p0, v4}, Lantlr/CharScanner;->match(C)V

    .line 625
    invoke-virtual {p0, v3}, Lantlr/CharScanner;->match(C)V

    .line 626
    invoke-virtual {p0}, Lantlr/CharScanner;->newline()V

    goto :goto_0

    .line 628
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 629
    invoke-virtual {p0, v4}, Lantlr/CharScanner;->match(C)V

    .line 630
    invoke-virtual {p0}, Lantlr/CharScanner;->newline()V

    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    .line 633
    invoke-virtual {p0, v3}, Lantlr/CharScanner;->match(C)V

    .line 634
    invoke-virtual {p0}, Lantlr/CharScanner;->newline()V

    :goto_0
    if-eqz p1, :cond_2

    const/16 p1, 0x20

    .line 642
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 643
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 645
    :goto_1
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void

    .line 637
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method public final mRCURLY(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7d

    .line 692
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    .line 694
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 695
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 697
    :goto_0
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mRULE_BLOCK(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3a

    .line 196
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    .line 198
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/CharScanner;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 200
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 201
    iget-object v5, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_0

    .line 203
    :cond_0
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 210
    :goto_0
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mALT(Z)V

    .line 212
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const/16 v5, 0x20

    const/16 v6, 0xd

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x3b

    const/16 v10, 0x7c

    if-eq v1, v8, :cond_2

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v9, :cond_3

    if-ne v1, v10, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 215
    :cond_2
    iget-object v1, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 216
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 217
    iget-object v11, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 233
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-ne v1, v10, :cond_8

    .line 234
    invoke-virtual {p0, v10}, Lantlr/CharScanner;->match(C)V

    .line 236
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v11

    invoke-virtual {v1, v11}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/CharScanner;->LA(I)C

    move-result v11

    invoke-virtual {v1, v11}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 237
    iget-object v1, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 238
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 239
    iget-object v11, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_2

    .line 241
    :cond_4
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v11

    invoke-virtual {v1, v11}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 248
    :goto_2
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mALT(Z)V

    .line 250
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-eq v1, v8, :cond_6

    if-eq v1, v7, :cond_6

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_6

    if-eq v1, v9, :cond_3

    if-ne v1, v10, :cond_5

    goto :goto_1

    .line 264
    :cond_5
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 253
    :cond_6
    iget-object v1, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 254
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 255
    iget-object v11, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_1

    .line 244
    :cond_7
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 275
    :cond_8
    invoke-virtual {p0, v9}, Lantlr/CharScanner;->match(C)V

    if-eqz p1, :cond_9

    const/16 p1, 0x15

    .line 277
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 278
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    .line 280
    :goto_3
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void

    .line 206
    :cond_a
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method public final mSEMI(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3b

    .line 666
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 668
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 669
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 671
    :goto_0
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mSL_COMMENT(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 1009
    const-string v1, "//"

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    .line 1014
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 1015
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v4

    if-lt v4, v3, :cond_1

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, v2, :cond_1

    const v1, 0xffff

    .line 1016
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->matchNot(C)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 1024
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    if-eqz p1, :cond_2

    const/16 p1, 0x22

    .line 1026
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1027
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 1029
    :goto_2
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mSTRING_LITERAL(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x22

    .line 567
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    :goto_0
    const/4 v2, 0x1

    .line 571
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 572
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->mESC(Z)V

    goto :goto_0

    .line 574
    :cond_0
    sget-object v3, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->matchNot(C)V

    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    if-eqz p1, :cond_2

    const/16 p1, 0x25

    .line 585
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 586
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 588
    :goto_1
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mSUBRULE_BLOCK(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x28

    .line 345
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(C)V

    .line 347
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/CharScanner;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    goto :goto_0

    .line 350
    :cond_0
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 357
    :goto_0
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mALT(Z)V

    .line 361
    :goto_1
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    const/16 v5, 0x20

    const/16 v6, 0xd

    const/16 v7, 0xa

    const/16 v8, 0x9

    if-eqz v1, :cond_5

    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/CharScanner;->LA(I)C

    move-result v9

    invoke-virtual {v1, v9}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 363
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v9

    const/16 v10, 0x7c

    if-eq v9, v8, :cond_2

    if-eq v9, v7, :cond_2

    if-eq v9, v6, :cond_2

    if-eq v9, v5, :cond_2

    if-ne v9, v10, :cond_1

    goto :goto_2

    .line 375
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 366
    :cond_2
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 379
    :goto_2
    invoke-virtual {p0, v10}, Lantlr/CharScanner;->match(C)V

    .line 381
    sget-object v5, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v3}, Lantlr/CharScanner;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 382
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    goto :goto_3

    .line 384
    :cond_3
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 391
    :goto_3
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mALT(Z)V

    goto :goto_1

    .line 387
    :cond_4
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 400
    :cond_5
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const/16 v9, 0x29

    if-eq v1, v8, :cond_7

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_7

    if-ne v1, v9, :cond_6

    goto :goto_4

    .line 412
    :cond_6
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 403
    :cond_7
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 416
    :goto_4
    invoke-virtual {p0, v9}, Lantlr/CharScanner;->match(C)V

    .line 418
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const/16 v4, 0x3d

    if-ne v1, v4, :cond_8

    invoke-virtual {p0, v3}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_8

    .line 419
    const-string v1, "=>"

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->match(Ljava/lang/String;)V

    goto :goto_5

    .line 421
    :cond_8
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_9

    .line 422
    invoke-virtual {p0, v3}, Lantlr/CharScanner;->match(C)V

    goto :goto_5

    .line 424
    :cond_9
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_a

    .line 425
    invoke-virtual {p0, v3}, Lantlr/CharScanner;->match(C)V

    goto :goto_5

    .line 427
    :cond_a
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_b

    .line 428
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->match(C)V

    :cond_b
    :goto_5
    if-eqz p1, :cond_c

    const/16 p1, 0x1a

    .line 435
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 436
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    .line 438
    :goto_6
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void

    .line 353
    :cond_d
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method public final mWS(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 284
    iget-object p1, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {p1}, Lantlr/ANTLRStringBuffer;->length()I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/4 v1, 0x1

    .line 292
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 293
    invoke-virtual {p0, v3}, Lantlr/CharScanner;->match(C)V

    goto :goto_2

    .line 295
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 296
    invoke-virtual {p0, v3}, Lantlr/CharScanner;->match(C)V

    goto :goto_2

    .line 298
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-lt v0, v1, :cond_3

    const/4 p1, 0x0

    .line 313
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void

    .line 302
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 299
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final mXDIGIT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 1208
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 1230
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v1, 0x61

    const/16 v2, 0x66

    .line 1219
    invoke-virtual {p0, v1, v2}, Lantlr/CharScanner;->matchRange(CC)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x41

    const/16 v2, 0x46

    .line 1225
    invoke-virtual {p0, v1, v2}, Lantlr/CharScanner;->matchRange(CC)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 1213
    invoke-virtual {p0, v1, v2}, Lantlr/CharScanner;->matchRange(CC)V

    :goto_0
    if-eqz p1, :cond_0

    const/16 p1, 0x28

    .line 1234
    invoke-virtual {p0, p1}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1235
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 1237
    :goto_1
    iput-object p1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public nextToken()Lantlr/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 63
    :goto_0
    invoke-virtual {p0}, Lantlr/CharScanner;->resetText()V

    const/4 v0, 0x1

    .line 66
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_a

    const/16 v2, 0xa

    if-eq v1, v2, :cond_a

    const/16 v2, 0xd

    if-eq v1, v2, :cond_a

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_9

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_8

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_7

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_6

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_5

    const/16 v2, 0x27

    if-eq v1, v2, :cond_4

    const/16 v2, 0x28

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 166
    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lantlr/CharScanner;->uponEOF()V

    invoke-virtual {p0, v0}, Lantlr/CharScanner;->makeToken(I)Lantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 167
    :cond_0
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lantlr/CharScanner;->getLine()I

    move-result v3

    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 93
    :pswitch_0
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mACTION(Z)V

    .line 94
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 160
    :pswitch_1
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mARG_ACTION(Z)V

    .line 161
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 99
    :pswitch_2
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    .line 100
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 111
    :pswitch_3
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mBANG(Z)V

    .line 112
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mSEMI(Z)V

    .line 118
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mRULE_BLOCK(Z)V

    .line 70
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mSUBRULE_BLOCK(Z)V

    .line 82
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mCHAR_LITERAL(Z)V

    .line 106
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 129
    :cond_5
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mRCURLY(Z)V

    .line 130
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 148
    :cond_6
    :pswitch_4
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mID_OR_KEYWORD(Z)V

    .line 149
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 154
    :cond_7
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mASSIGN_RHS(Z)V

    .line 155
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 87
    :cond_8
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    .line 88
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 123
    :cond_9
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMA(Z)V

    .line 124
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 75
    :cond_a
    :pswitch_5
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 76
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    .line 170
    :goto_1
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    if-nez v0, :cond_b

    goto/16 :goto_0

    .line 171
    :cond_b
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getType()I

    move-result v0

    .line 172
    invoke-virtual {p0, v0}, Lantlr/CharScanner;->testLiteralsTable(I)I

    move-result v0

    .line 173
    iget-object v1, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    invoke-virtual {v1, v0}, Lantlr/Token;->setType(I)V

    .line 174
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 177
    :try_start_1
    new-instance v1, Lantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamRecognitionException;-><init>(Lantlr/RecognitionException;)V

    throw v1
    :try_end_1
    .catch Lantlr/CharStreamException; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    :goto_2
    instance-of v1, v0, Lantlr/CharStreamIOException;

    if-eqz v1, :cond_c

    .line 182
    new-instance v1, Lantlr/TokenStreamIOException;

    check-cast v0, Lantlr/CharStreamIOException;

    iget-object v0, v0, Lantlr/CharStreamIOException;->io:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 185
    :cond_c
    new-instance v1, Lantlr/TokenStreamException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
