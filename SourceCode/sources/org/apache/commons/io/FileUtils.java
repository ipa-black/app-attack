package org.apache.commons.io;

import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Collection;
import java.util.Date;
import java.util.LinkedList;
import org.apache.commons.io.filefilter.DirectoryFileFilter;
import org.apache.commons.io.filefilter.FalseFileFilter;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.SuffixFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;
/* loaded from: classes5.dex */
public class FileUtils {
    public static final long ONE_GB = 1073741824;
    public static final long ONE_KB = 1024;
    public static final long ONE_MB = 1048576;

    public static String byteCountToDisplaySize(long j) {
        long j2 = j / ONE_GB;
        if (j2 > 0) {
            return new StringBuffer().append(String.valueOf(j2)).append(" GB").toString();
        }
        long j3 = j / 1048576;
        if (j3 > 0) {
            return new StringBuffer().append(String.valueOf(j3)).append(" MB").toString();
        }
        long j4 = j / 1024;
        if (j4 > 0) {
            return new StringBuffer().append(String.valueOf(j4)).append(" KB").toString();
        }
        return new StringBuffer().append(String.valueOf(j)).append(" bytes").toString();
    }

    public static void touch(File file) throws IOException {
        IOUtils.closeQuietly(new FileOutputStream(file));
    }

    private static void innerListFiles(Collection collection, File file, IOFileFilter iOFileFilter) {
        File[] listFiles = file.listFiles((FileFilter) iOFileFilter);
        for (int i = 0; i < listFiles.length; i++) {
            if (listFiles[i].isDirectory()) {
                innerListFiles(collection, listFiles[i], iOFileFilter);
            } else {
                collection.add(listFiles[i]);
            }
        }
    }

    public static File[] convertFileCollectionToFileArray(Collection collection) {
        return (File[]) collection.toArray(new File[collection.size()]);
    }

    public static Collection listFiles(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        IOFileFilter andFileFilter;
        if (file.isDirectory()) {
            if (iOFileFilter == null) {
                throw new NullPointerException("Parameter 'fileFilter' is null");
            }
            IOFileFilter andFileFilter2 = FileFilterUtils.andFileFilter(iOFileFilter, FileFilterUtils.notFileFilter(DirectoryFileFilter.INSTANCE));
            if (iOFileFilter2 == null) {
                andFileFilter = FalseFileFilter.INSTANCE;
            } else {
                andFileFilter = FileFilterUtils.andFileFilter(iOFileFilter2, DirectoryFileFilter.INSTANCE);
            }
            LinkedList linkedList = new LinkedList();
            innerListFiles(linkedList, file, FileFilterUtils.orFileFilter(andFileFilter2, andFileFilter));
            return linkedList;
        }
        throw new IllegalArgumentException("Parameter 'directory' is not a directory");
    }

    private static String[] toSuffixes(String[] strArr) {
        String[] strArr2 = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = new StringBuffer(".").append(strArr[i]).toString();
        }
        return strArr2;
    }

    public static Collection listFiles(File file, String[] strArr, boolean z) {
        IOFileFilter suffixFileFilter;
        if (strArr == null) {
            suffixFileFilter = TrueFileFilter.INSTANCE;
        } else {
            suffixFileFilter = new SuffixFileFilter(toSuffixes(strArr));
        }
        return listFiles(file, suffixFileFilter, z ? TrueFileFilter.INSTANCE : FalseFileFilter.INSTANCE);
    }

    public static boolean contentEquals(File file, File file2) throws IOException {
        FileInputStream fileInputStream;
        boolean exists = file.exists();
        if (exists != file2.exists()) {
            return false;
        }
        if (!exists) {
            return true;
        }
        if (file.isDirectory() || file2.isDirectory()) {
            throw new IOException("Can't compare directories, only files");
        }
        FileInputStream fileInputStream2 = null;
        try {
            FileInputStream fileInputStream3 = new FileInputStream(file);
            try {
                fileInputStream = new FileInputStream(file2);
                try {
                    boolean contentEquals = IOUtils.contentEquals(fileInputStream3, fileInputStream);
                    IOUtils.closeQuietly(fileInputStream3);
                    IOUtils.closeQuietly(fileInputStream);
                    return contentEquals;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream3;
                    IOUtils.closeQuietly(fileInputStream2);
                    IOUtils.closeQuietly(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public static File toFile(URL url) {
        if (url.getProtocol().equals("file")) {
            return new File(url.getFile().replace('/', File.separatorChar));
        }
        return null;
    }

    public static URL[] toURLs(File[] fileArr) throws IOException {
        int length = fileArr.length;
        URL[] urlArr = new URL[length];
        for (int i = 0; i < length; i++) {
            urlArr[i] = fileArr[i].toURL();
        }
        return urlArr;
    }

    public static void copyFileToDirectory(File file, File file2) throws IOException {
        if (file2.exists() && !file2.isDirectory()) {
            throw new IllegalArgumentException("Destination is not a directory");
        }
        copyFile(file, new File(file2, file.getName()), true);
    }

    public static void copyFile(File file, File file2) throws IOException {
        copyFile(file, file2, true);
    }

    public static void copyFile(File file, File file2, boolean z) throws IOException {
        if (!file.exists()) {
            throw new FileNotFoundException(new StringBuffer("File ").append(file).append(" does not exist").toString());
        }
        if (file2.getParentFile() != null && !file2.getParentFile().exists()) {
            file2.getParentFile().mkdirs();
        }
        if (file2.exists() && !file2.canWrite()) {
            throw new IOException(new StringBuffer("Unable to open file ").append(file2).append(" for writing.").toString());
        }
        if (file.getCanonicalPath().equals(file2.getCanonicalPath())) {
            throw new IOException(new StringBuffer("Unable to write file ").append(file).append(" on itself.").toString());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            CopyUtils.copy(fileInputStream, fileOutputStream);
            IOUtils.closeQuietly(fileOutputStream);
            IOUtils.closeQuietly(fileInputStream);
            if (file.length() != file2.length()) {
                throw new IOException(new StringBuffer("Failed to copy full contents from ").append(file).append(" to ").append(file2).toString());
            }
            if (z) {
                file2.setLastModified(file.lastModified());
            }
        } catch (Throwable th) {
            IOUtils.closeQuietly(fileInputStream);
            throw th;
        }
    }

    public static void copyURLToFile(URL url, File file) throws IOException {
        if (file.getParentFile() != null && !file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        if (file.exists() && !file.canWrite()) {
            throw new IOException(new StringBuffer("Unable to open file ").append(file).append(" for writing.").toString());
        }
        InputStream openStream = url.openStream();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            CopyUtils.copy(openStream, fileOutputStream);
            IOUtils.closeQuietly(fileOutputStream);
        } finally {
            IOUtils.closeQuietly(openStream);
        }
    }

    public static void deleteDirectory(File file) throws IOException {
        if (file.exists()) {
            cleanDirectory(file);
            if (!file.delete()) {
                throw new IOException(new StringBuffer("Unable to delete directory ").append(file).append(".").toString());
            }
        }
    }

    public static void cleanDirectory(File file) throws IOException {
        if (!file.exists()) {
            throw new IllegalArgumentException(new StringBuffer().append(file).append(" does not exist").toString());
        }
        if (!file.isDirectory()) {
            throw new IllegalArgumentException(new StringBuffer().append(file).append(" is not a directory").toString());
        }
        IOException e2 = null;
        for (File file2 : file.listFiles()) {
            try {
                forceDelete(file2);
            } catch (IOException e3) {
                e2 = e3;
            }
        }
        if (e2 != null) {
            throw e2;
        }
    }

    public static boolean waitFor(File file, int i) {
        int i2 = 0;
        int i3 = 0;
        while (!file.exists()) {
            int i4 = i2 + 1;
            if (i2 >= 10) {
                int i5 = i3 + 1;
                if (i3 > i) {
                    return false;
                }
                i3 = i5;
                i2 = 0;
            } else {
                i2 = i4;
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException unused) {
            } catch (Exception unused2) {
                return true;
            }
        }
        return true;
    }

    public static String readFileToString(File file, String str) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return IOUtils.toString(fileInputStream, str);
        } finally {
            IOUtils.closeQuietly(fileInputStream);
        }
    }

    public static void writeStringToFile(File file, String str, String str2) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(str.getBytes(str2));
        } finally {
            IOUtils.closeQuietly(fileOutputStream);
        }
    }

    public static void forceDelete(File file) throws IOException {
        if (file.isDirectory()) {
            deleteDirectory(file);
        } else if (!file.exists()) {
            throw new FileNotFoundException(new StringBuffer("File does not exist: ").append(file).toString());
        } else {
            if (!file.delete()) {
                throw new IOException(new StringBuffer("Unable to delete file: ").append(file).toString());
            }
        }
    }

    public static void forceDeleteOnExit(File file) throws IOException {
        if (file.isDirectory()) {
            deleteDirectoryOnExit(file);
        } else {
            file.deleteOnExit();
        }
    }

    private static void deleteDirectoryOnExit(File file) throws IOException {
        if (file.exists()) {
            cleanDirectoryOnExit(file);
            file.deleteOnExit();
        }
    }

    private static void cleanDirectoryOnExit(File file) throws IOException {
        if (!file.exists()) {
            throw new IllegalArgumentException(new StringBuffer().append(file).append(" does not exist").toString());
        }
        if (!file.isDirectory()) {
            throw new IllegalArgumentException(new StringBuffer().append(file).append(" is not a directory").toString());
        }
        IOException e2 = null;
        for (File file2 : file.listFiles()) {
            try {
                forceDeleteOnExit(file2);
            } catch (IOException e3) {
                e2 = e3;
            }
        }
        if (e2 != null) {
            throw e2;
        }
    }

    public static void forceMkdir(File file) throws IOException {
        if (file.exists()) {
            if (file.isFile()) {
                throw new IOException(new StringBuffer("File ").append(file).append(" exists and is not a directory. Unable to create directory.").toString());
            }
        } else if (!file.mkdirs()) {
            throw new IOException(new StringBuffer("Unable to create directory ").append(file).toString());
        }
    }

    public static long sizeOfDirectory(File file) {
        File[] listFiles;
        long length;
        if (!file.exists()) {
            throw new IllegalArgumentException(new StringBuffer().append(file).append(" does not exist").toString());
        }
        if (!file.isDirectory()) {
            throw new IllegalArgumentException(new StringBuffer().append(file).append(" is not a directory").toString());
        }
        long j = 0;
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                length = sizeOfDirectory(file2);
            } else {
                length = file2.length();
            }
            j += length;
        }
        return j;
    }

    public static boolean isFileNewer(File file, File file2) {
        if (file2 == null) {
            throw new IllegalArgumentException("No specified reference file");
        }
        if (!file2.exists()) {
            throw new IllegalArgumentException(new StringBuffer("The reference file '").append(file).append("' doesn't exist").toString());
        }
        return isFileNewer(file, file2.lastModified());
    }

    public static boolean isFileNewer(File file, Date date) {
        if (date == null) {
            throw new IllegalArgumentException("No specified date");
        }
        return isFileNewer(file, date.getTime());
    }

    public static boolean isFileNewer(File file, long j) {
        if (file != null) {
            return file.exists() && file.lastModified() > j;
        }
        throw new IllegalArgumentException("No specified file");
    }
}
