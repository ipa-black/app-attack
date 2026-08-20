.class public Lantlr/Tool;
.super Ljava/lang/Object;
.source "Tool.java"


# static fields
.field protected static literalsPrefix:Ljava/lang/String; = "LITERAL_"

.field protected static outputDir:Ljava/lang/String; = "."

.field protected static upperCaseMangledLiterals:Z = false

.field public static version:Ljava/lang/String; = ""


# instance fields
.field private cmdLineArgValid:Lantlr/collections/impl/BitSet;

.field errorHandler:Lantlr/ToolErrorHandler;

.field transient f:Ljava/io/Reader;

.field genDiagnostics:Z

.field genDocBook:Z

.field genHTML:Z

.field protected genHashLines:Z

.field protected grammarFile:Ljava/lang/String;

.field protected hasError:Z

.field protected nameSpace:Lantlr/NameSpace;

.field protected namespaceAntlr:Ljava/lang/String;

.field protected namespaceStd:Ljava/lang/String;

.field protected noConstructors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lantlr/Tool;->hasError:Z

    .line 27
    iput-boolean v0, p0, Lantlr/Tool;->genDiagnostics:Z

    .line 30
    iput-boolean v0, p0, Lantlr/Tool;->genDocBook:Z

    .line 33
    iput-boolean v0, p0, Lantlr/Tool;->genHTML:Z

    .line 40
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lantlr/Tool;->f:Ljava/io/Reader;

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lantlr/Tool;->nameSpace:Lantlr/NameSpace;

    .line 49
    iput-object v1, p0, Lantlr/Tool;->namespaceAntlr:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lantlr/Tool;->namespaceStd:Ljava/lang/String;

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lantlr/Tool;->genHashLines:Z

    .line 52
    iput-boolean v0, p0, Lantlr/Tool;->noConstructors:Z

    .line 54
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-direct {v0}, Lantlr/collections/impl/BitSet;-><init>()V

    iput-object v0, p0, Lantlr/Tool;->cmdLineArgValid:Lantlr/collections/impl/BitSet;

    .line 58
    new-instance v0, Lantlr/DefaultToolErrorHandler;

    invoke-direct {v0, p0}, Lantlr/DefaultToolErrorHandler;-><init>(Lantlr/Tool;)V

    iput-object v0, p0, Lantlr/Tool;->errorHandler:Lantlr/ToolErrorHandler;

    return-void
.end method

.method private static help()V
    .locals 2

    .line 364
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: java antlr.Tool [args] file.g"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -o outputDir       specify output directory where all output generated."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -glib superGrammar specify location of supergrammar file."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -debug             launch the ParseView debugger upon parser invocation."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -html              generate a html file from your grammar."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -docbook           generate a docbook sgml file from your grammar."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -diagnostic        generate a textfile with diagnostics."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -trace             have all rules call traceIn/traceOut."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -traceLexer        have lexer rules call traceIn/traceOut."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -traceParser       have parser rules call traceIn/traceOut."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -traceTreeParser   have tree parser rules call traceIn/traceOut."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -h|-help|--help    this message"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    .line 379
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ANTLR Parser Generator   Version 2.7.2   1989-2003 jGuru.com"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    const-string v0, "2.7.2"

    sput-object v0, Lantlr/Tool;->version:Ljava/lang/String;

    const/4 v0, 0x0

    .line 384
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 385
    invoke-static {}, Lantlr/Tool;->help()V

    .line 386
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_0
    move v1, v0

    .line 388
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_1

    .line 398
    new-instance v1, Lantlr/Tool;

    invoke-direct {v1}, Lantlr/Tool;-><init>()V

    .line 399
    invoke-virtual {v1, p0}, Lantlr/Tool;->doEverything([Ljava/lang/String;)I

    goto/16 :goto_1

    .line 389
    :cond_1
    aget-object v3, p0, v1

    const-string v4, "-h"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, p0, v1

    const-string v4, "-help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, p0, v1

    const-string v4, "--help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 393
    :cond_2
    invoke-static {}, Lantlr/Tool;->help()V

    .line 394
    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 403
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 405
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "#$%%*&@# internal error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "[complain to nearest government official"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 407
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, " or send hate-mail to parrt@jguru.com;"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, " please send stack trace with report.]"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 412
    :goto_1
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static parseSeparatedList(Ljava/lang/String;C)Lantlr/collections/impl/Vector;
    .locals 5

    .line 504
    new-instance v0, Lantlr/collections/impl/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lantlr/collections/impl/Vector;-><init>(I)V

    .line 505
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 507
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 521
    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0

    .line 508
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_3

    goto :goto_2

    .line 509
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 513
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 514
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 516
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected checkForInvalidArguments([Ljava/lang/String;Lantlr/collections/impl/BitSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 99
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p2, v0}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "invalid command-line argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FileCopy: destination file is unwriteable: "

    const-string v1, "FileCopy: destination directory is unwriteable: "

    const-string v2, "FileCopy: destination directory doesn\'t exist: "

    const-string v3, "FileCopy: destination is not a file: "

    const-string v4, "FileCopy: source file is unreadable: "

    const-string v5, "FileCopy: no such source file: "

    .line 113
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 123
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 126
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 133
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 134
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    new-instance p1, Ljava/io/DataInputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p1, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 138
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance p1, Lantlr/FileCopyException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lantlr/FileCopyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_1
    new-instance p1, Lantlr/FileCopyException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lantlr/FileCopyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_2
    invoke-virtual {p0, v7}, Lantlr/Tool;->parent(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 167
    :goto_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/FileReader;

    invoke-direct {p2, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 168
    :try_start_1
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    .line 170
    :try_start_2
    new-array v1, v0, [C

    :goto_1
    const/4 v2, 0x0

    .line 172
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/Reader;->read([CII)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 181
    :try_start_3
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 189
    :catch_0
    :try_start_4
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    .line 174
    :cond_3
    :try_start_5
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/Writer;->write([CII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, p1

    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object v10, v8

    move-object v8, p1

    move-object p1, p2

    move-object p2, v10

    goto :goto_2

    .line 161
    :cond_4
    :try_start_6
    new-instance p1, Lantlr/FileCopyException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lantlr/FileCopyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_5
    new-instance p1, Lantlr/FileCopyException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lantlr/FileCopyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_6
    new-instance p2, Lantlr/FileCopyException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lantlr/FileCopyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 124
    :cond_7
    new-instance p2, Lantlr/FileCopyException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lantlr/FileCopyException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    move-object p2, v8

    :goto_2
    if-eqz v8, :cond_8

    .line 181
    :try_start_7
    invoke-virtual {v8}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_8
    if-eqz p2, :cond_9

    .line 189
    :try_start_8
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 179
    :catch_3
    :cond_9
    throw p1
.end method

.method public doEverything([Ljava/lang/String;)I
    .locals 7

    const-string v0, "code-generator class \'"

    const-string v1, "Cannot instantiate code-generator: "

    const-string v2, "antlr."

    .line 215
    new-instance v3, Lantlr/preprocessor/Tool;

    invoke-direct {v3, p0, p1}, Lantlr/preprocessor/Tool;-><init>(Lantlr/Tool;[Ljava/lang/String;)V

    .line 217
    invoke-virtual {v3}, Lantlr/preprocessor/Tool;->preprocess()Z

    move-result v4

    .line 218
    invoke-virtual {v3}, Lantlr/preprocessor/Tool;->preprocessedArgList()[Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {p0, v3}, Lantlr/Tool;->processArguments([Ljava/lang/String;)V

    if-nez v4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 226
    :cond_0
    invoke-virtual {p0}, Lantlr/Tool;->getGrammarReader()Ljava/io/Reader;

    move-result-object v4

    iput-object v4, p0, Lantlr/Tool;->f:Ljava/io/Reader;

    .line 228
    new-instance v4, Lantlr/ANTLRLexer;

    iget-object v5, p0, Lantlr/Tool;->f:Ljava/io/Reader;

    invoke-direct {v4, v5}, Lantlr/ANTLRLexer;-><init>(Ljava/io/Reader;)V

    .line 229
    new-instance v5, Lantlr/TokenBuffer;

    invoke-direct {v5, v4}, Lantlr/TokenBuffer;-><init>(Lantlr/TokenStream;)V

    .line 230
    new-instance v4, Lantlr/LLkAnalyzer;

    invoke-direct {v4, p0}, Lantlr/LLkAnalyzer;-><init>(Lantlr/Tool;)V

    .line 231
    new-instance v6, Lantlr/MakeGrammar;

    invoke-direct {v6, p0, p1, v4}, Lantlr/MakeGrammar;-><init>(Lantlr/Tool;[Ljava/lang/String;Lantlr/LLkAnalyzer;)V

    .line 234
    :try_start_0
    new-instance p1, Lantlr/ANTLRParser;

    invoke-direct {p1, v5, v6, p0}, Lantlr/ANTLRParser;-><init>(Lantlr/TokenBuffer;Lantlr/ANTLRGrammarParseBehavior;Lantlr/Tool;)V

    .line 235
    iget-object v5, p0, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lantlr/Parser;->setFilename(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Lantlr/ANTLRParser;->grammar()V

    .line 237
    invoke-virtual {p0}, Lantlr/Tool;->hasError()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 238
    const-string p1, "Exiting due to errors."

    invoke-virtual {p0, p1}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V

    .line 240
    :cond_1
    iget-object p1, p0, Lantlr/Tool;->cmdLineArgValid:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3, p1}, Lantlr/Tool;->checkForInvalidArguments([Ljava/lang/String;Lantlr/collections/impl/BitSet;)V

    .line 247
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lantlr/Tool;->getLanguage(Lantlr/MakeGrammar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, "CodeGenerator"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lantlr/TokenStreamException; {:try_start_0 .. :try_end_0} :catch_4

    .line 249
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 250
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/CodeGenerator;

    .line 251
    invoke-virtual {v2, v6}, Lantlr/CodeGenerator;->setBehavior(Lantlr/DefineGrammarSymbols;)V

    .line 252
    invoke-virtual {v2, v4}, Lantlr/CodeGenerator;->setAnalyzer(Lantlr/LLkGrammarAnalyzer;)V

    .line 253
    invoke-virtual {v2, p0}, Lantlr/CodeGenerator;->setTool(Lantlr/Tool;)V

    .line 254
    invoke-virtual {v2}, Lantlr/CodeGenerator;->gen()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lantlr/RecognitionException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lantlr/TokenStreamException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 266
    :catch_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' is not accessible"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :catch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :catch_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :catch_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/Tool;->panic(Ljava/lang/String;)V
    :try_end_2
    .catch Lantlr/RecognitionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lantlr/TokenStreamException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    :catch_4
    move-exception p1

    .line 273
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "TokenStreamException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unhandled parser error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public doEverythingWrapper([Ljava/lang/String;)V
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Lantlr/Tool;->doEverything([Ljava/lang/String;)I

    move-result p1

    .line 204
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lantlr/Tool;->hasError:Z

    .line 283
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lantlr/Tool;->hasError:Z

    .line 294
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lantlr/FileLineFormatter;->getFormatter()Lantlr/FileLineFormatter;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lantlr/FileLineFormatter;->getFormatString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public factory(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 321
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 328
    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Can\'t create an object of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public fatalError(Ljava/lang/String;)V
    .locals 1

    .line 461
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 462
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public fileMinusPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 335
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGenHashLines()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lantlr/Tool;->genHashLines:Z

    return v0
.end method

.method public getGrammarFile()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    return-object v0
.end method

.method public getGrammarReader()Ljava/io/Reader;
    .locals 4

    const/4 v0, 0x0

    .line 425
    :try_start_0
    iget-object v1, p0, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 426
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 430
    :catch_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "cannot open grammar file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getLanguage(Lantlr/MakeGrammar;)Ljava/lang/String;
    .locals 1

    .line 347
    iget-boolean v0, p0, Lantlr/Tool;->genDiagnostics:Z

    if-eqz v0, :cond_0

    .line 348
    const-string p1, "Diagnostic"

    return-object p1

    .line 350
    :cond_0
    iget-boolean v0, p0, Lantlr/Tool;->genHTML:Z

    if-eqz v0, :cond_1

    .line 351
    const-string p1, "HTML"

    return-object p1

    .line 353
    :cond_1
    iget-boolean v0, p0, Lantlr/Tool;->genDocBook:Z

    if-eqz v0, :cond_2

    .line 354
    const-string p1, "DocBook"

    return-object p1

    .line 356
    :cond_2
    iget-object p1, p1, Lantlr/DefineGrammarSymbols;->language:Ljava/lang/String;

    return-object p1
.end method

.method public getLiteralsPrefix()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lantlr/Tool;->literalsPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getNameSpace()Lantlr/NameSpace;
    .locals 1

    .line 70
    iget-object v0, p0, Lantlr/Tool;->nameSpace:Lantlr/NameSpace;

    return-object v0
.end method

.method public getNamespaceAntlr()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lantlr/Tool;->namespaceAntlr:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceStd()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lantlr/Tool;->namespaceStd:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputDirectory()Ljava/lang/String;
    .locals 1

    .line 360
    sget-object v0, Lantlr/Tool;->outputDir:Ljava/lang/String;

    return-object v0
.end method

.method public getUpperCaseMangledLiterals()Z
    .locals 1

    .line 90
    sget-boolean v0, Lantlr/Tool;->upperCaseMangledLiterals:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lantlr/Tool;->hasError:Z

    return v0
.end method

.method public openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Lantlr/PreservingFileWriter;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lantlr/Tool;->outputDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lantlr/PreservingFileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public panic()V
    .locals 1

    .line 472
    const-string v0, "panic"

    invoke-virtual {p0, v0}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V

    return-void
.end method

.method public panic(Ljava/lang/String;)V
    .locals 2

    .line 483
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "panic: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V

    return-void
.end method

.method public parent(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 490
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 492
    invoke-virtual {p1}, Ljava/io/File;->isAbsolute()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 493
    new-instance p1, Ljava/io/File;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 495
    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 497
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public pathToFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 529
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 533
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    .line 535
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected processArguments([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 544
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    return-void

    .line 545
    :cond_0
    aget-object v2, p1, v1

    const-string v3, "-diagnostic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 546
    iput-boolean v3, p0, Lantlr/Tool;->genDiagnostics:Z

    .line 547
    iput-boolean v0, p0, Lantlr/Tool;->genHTML:Z

    .line 548
    invoke-virtual {p0, v1}, Lantlr/Tool;->setArgOK(I)V

    goto :goto_1

    .line 550
    :cond_1
    aget-object v2, p1, v1

    const-string v4, "-o"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 551
    invoke-virtual {p0, v1}, Lantlr/Tool;->setArgOK(I)V

    add-int/lit8 v2, v1, 0x1

    .line 552
    array-length v4, p1

    if-lt v2, v4, :cond_2

    .line 553
    const-string v2, "missing output directory with -o option; ignoring"

    invoke-virtual {p0, v2}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 557
    :cond_2
    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lantlr/Tool;->setOutputDirectory(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0, v2}, Lantlr/Tool;->setArgOK(I)V

    move v1, v2

    goto :goto_1

    .line 561
    :cond_3
    aget-object v2, p1, v1

    const-string v4, "-html"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 562
    iput-boolean v3, p0, Lantlr/Tool;->genHTML:Z

    .line 563
    iput-boolean v0, p0, Lantlr/Tool;->genDiagnostics:Z

    .line 564
    invoke-virtual {p0, v1}, Lantlr/Tool;->setArgOK(I)V

    goto :goto_1

    .line 566
    :cond_4
    aget-object v2, p1, v1

    const-string v4, "-docbook"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 567
    iput-boolean v3, p0, Lantlr/Tool;->genDocBook:Z

    .line 568
    iput-boolean v0, p0, Lantlr/Tool;->genDiagnostics:Z

    .line 569
    invoke-virtual {p0, v1}, Lantlr/Tool;->setArgOK(I)V

    goto :goto_1

    .line 572
    :cond_5
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_6

    .line 574
    aget-object v2, p1, v1

    iput-object v2, p0, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    .line 575
    invoke-virtual {p0, v1}, Lantlr/Tool;->setArgOK(I)V

    :cond_6
    :goto_1
    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public reportException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .line 438
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public reportProgress(Ljava/lang/String;)V
    .locals 1

    .line 445
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setArgOK(I)V
    .locals 1

    .line 582
    iget-object v0, p0, Lantlr/Tool;->cmdLineArgValid:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/BitSet;->add(I)V

    return-void
.end method

.method public setFileLineFormatter(Lantlr/FileLineFormatter;)V
    .locals 0

    .line 94
    invoke-static {p1}, Lantlr/FileLineFormatter;->setFormatter(Lantlr/FileLineFormatter;)V

    return-void
.end method

.method public setNameSpace(Ljava/lang/String;)V
    .locals 2

    .line 638
    iget-object v0, p0, Lantlr/Tool;->nameSpace:Lantlr/NameSpace;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Lantlr/NameSpace;

    const-string v1, "\""

    invoke-static {p1, v1, v1}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lantlr/NameSpace;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lantlr/Tool;->nameSpace:Lantlr/NameSpace;

    :cond_0
    return-void
.end method

.method public setOutputDirectory(Ljava/lang/String;)V
    .locals 0

    .line 586
    sput-object p1, Lantlr/Tool;->outputDir:Ljava/lang/String;

    return-void
.end method

.method public toolError(Ljava/lang/String;)V
    .locals 3

    .line 593
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 3

    .line 600
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 610
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lantlr/FileLineFormatter;->getFormatter()Lantlr/FileLineFormatter;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lantlr/FileLineFormatter;->getFormatString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, "warning:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public warning([Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    if-eqz p1, :cond_0

    .line 620
    array-length v0, p1

    if-nez v0, :cond_1

    .line 621
    :cond_0
    const-string v0, "bad multi-line message to Tool.warning"

    invoke-virtual {p0, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 623
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lantlr/FileLineFormatter;->getFormatter()Lantlr/FileLineFormatter;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lantlr/FileLineFormatter;->getFormatString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "warning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 625
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    return-void

    .line 626
    :cond_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lantlr/FileLineFormatter;->getFormatter()Lantlr/FileLineFormatter;

    move-result-object v3

    invoke-virtual {v3, p2, p3, p4}, Lantlr/FileLineFormatter;->getFormatString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
