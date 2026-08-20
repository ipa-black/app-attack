.class public final Lorg/apache/oro/text/regex/Perl5Pattern;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/regex/Pattern;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final _OPT_ANCH:I = 0x3

.field static final _OPT_ANCH_BOL:I = 0x1

.field static final _OPT_ANCH_MBOL:I = 0x2

.field static final _OPT_IMPLICIT:I = 0x8

.field static final _OPT_SKIP:I = 0x4


# instance fields
.field _anchor:I

.field _back:I

.field _expression:Ljava/lang/String;

.field _isCaseInsensitive:Z

.field _isExpensive:Z

.field _minLength:I

.field _mustString:[C

.field _mustUtility:I

.field _numParentheses:I

.field _options:I

.field _program:[C

.field _startClassOffset:I

.field _startString:[C


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOptions()I
    .locals 1

    iget v0, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_options:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/oro/text/regex/Perl5Pattern;->_expression:Ljava/lang/String;

    return-object v0
.end method
