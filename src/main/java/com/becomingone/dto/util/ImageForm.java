package com.becomingone.dto.util;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.Size;

/**
 * Created by Davy on 8/16/2015.
 */
public class ImageForm {

    MultipartFile[] files;

    //region Getters & Setters
    public MultipartFile[] getFiles() {
        return files;
    }

    public void setFiles(MultipartFile[] files) {
        this.files = files;
    }
    //endregion

    @Override
    public String toString() {
        return "ImageForm{" +
                "file=" + files +
                '}';
    }
}
