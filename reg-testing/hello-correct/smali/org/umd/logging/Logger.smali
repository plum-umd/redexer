.class public Lorg/umd/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field static final WRAPPER_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field static pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final tag:Ljava/lang/String;

.field static thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    const-class v0, Lorg/umd/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/umd/logging/Logger;->tag:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Character;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Short;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Float;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Double;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Ljava/lang/Void;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/umd/logging/Logger;->WRAPPER_TYPES:Ljava/util/Set;

    const/4 v0, 0x0

    .line 70
    sput-object v0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 71
    sput-object v0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isWrapperType(Ljava/lang/Class;)Z
    .locals 1

    .line 73
    sget-object v0, Lorg/umd/logging/Logger;->WRAPPER_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static varargs log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object p1, v3, p0

    .line 90
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v3, p1

    const/4 p0, 0x3

    aput-object p2, v3, p0

    const/4 p0, 0x4

    aput-object p3, v3, p0

    .line 91
    array-length p0, p4

    add-int/2addr p0, v2

    new-array p0, p0, [Ljava/lang/Object;

    .line 92
    invoke-static {v3, v4, p0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    array-length p1, p4

    invoke-static {p4, v4, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    invoke-static {p0}, Lorg/umd/logging/Logger;->logPut([Ljava/lang/Object;)V

    return-void
.end method

.method public static logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "a"

    .line 184
    aput-object v1, p2, v0

    .line 185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    .line 186
    aput-object p0, p2, v0

    const/4 p0, 0x3

    .line 187
    aput-object p1, p2, p0

    .line 188
    sget-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez p0, :cond_0

    .line 189
    new-instance p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 191
    :cond_0
    sget-object p0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    if-nez p0, :cond_1

    .line 192
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lorg/umd/logging/FileWriterHandler;

    sget-object v0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1, v0}, Lorg/umd/logging/FileWriterHandler;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    .line 193
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    const/4 p0, 0x4

    .line 196
    :goto_0
    array-length p1, p2

    if-ge p0, p1, :cond_4

    .line 197
    aget-object p1, p2, p0

    .line 198
    instance-of v0, p1, Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 199
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 200
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "umd_Intent_key"

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 203
    sget-object v0, Lorg/umd/logging/FileWriterHandler;->mIntentKey:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    goto :goto_1

    .line 207
    :cond_2
    sget-object v0, Lorg/umd/logging/FileWriterHandler;->mIntentKey:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 212
    :cond_4
    sget-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "ae"

    .line 219
    aput-object v1, p2, v0

    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    .line 221
    aput-object p0, p2, v0

    const/4 p0, 0x3

    .line 222
    aput-object p1, p2, p0

    .line 223
    sget-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez p0, :cond_0

    .line 224
    new-instance p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 226
    :cond_0
    sget-object p0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    if-nez p0, :cond_1

    .line 227
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lorg/umd/logging/FileWriterHandler;

    sget-object v0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1, v0}, Lorg/umd/logging/FileWriterHandler;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    .line 228
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 230
    :cond_1
    sget-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static logBasicBlockEntry(I)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 112
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v0, v2

    .line 113
    sget-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez p0, :cond_0

    .line 114
    new-instance p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 116
    :cond_0
    sget-object p0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    if-nez p0, :cond_1

    .line 117
    new-instance p0, Ljava/lang/Thread;

    new-instance v2, Lorg/umd/logging/FileWriterHandler;

    sget-object v3, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2, v3}, Lorg/umd/logging/FileWriterHandler;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    invoke-direct {p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 120
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v1

    .line 121
    sget-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static varargs logMethod(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    .line 101
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 102
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Method "

    .line 103
    invoke-static {v1, p0, v2, v0, p1}, Lorg/umd/logging/Logger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "m"

    .line 135
    aput-object v1, p2, v0

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    .line 137
    aput-object p0, p2, v0

    const/4 p0, 0x3

    .line 138
    aput-object p1, p2, p0

    .line 139
    sget-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez p0, :cond_0

    .line 140
    new-instance p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 142
    :cond_0
    sget-object p0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    if-nez p0, :cond_1

    .line 143
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lorg/umd/logging/FileWriterHandler;

    sget-object v0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1, v0}, Lorg/umd/logging/FileWriterHandler;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 146
    :cond_1
    sget-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "e"

    .line 160
    aput-object v1, p2, v0

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    .line 162
    aput-object p0, p2, v0

    const/4 p0, 0x3

    .line 163
    aput-object p1, p2, p0

    .line 164
    sget-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez p0, :cond_0

    .line 165
    new-instance p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 167
    :cond_0
    sget-object p0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    if-nez p0, :cond_1

    .line 168
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lorg/umd/logging/FileWriterHandler;

    sget-object v0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1, v0}, Lorg/umd/logging/FileWriterHandler;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    .line 169
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 171
    :cond_1
    sget-object p0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static logPut([Ljava/lang/Object;)V
    .locals 3

    .line 77
    sget-object v0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 80
    :cond_0
    sget-object v0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/umd/logging/FileWriterHandler;

    sget-object v2, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1, v2}, Lorg/umd/logging/FileWriterHandler;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lorg/umd/logging/Logger;->thread:Ljava/lang/Thread;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    const/4 v0, 0x2

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p0, v0

    .line 85
    sget-object v0, Lorg/umd/logging/Logger;->pipe:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
