package com.society.application.controler;

import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

@Controller
public class PdfController {

    @GetMapping("/downloadPdf/{fileName}")
    public ResponseEntity<byte[]> downloadPdf(@PathVariable String fileName) throws IOException {
        ClassPathResource pdfFile = new ClassPathResource("static/NDHform/" + fileName + ".pdf");

        byte[] pdfBytes = Files.readAllBytes(pdfFile.getFile().toPath());

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_PDF);
        headers.setContentDispositionFormData("attachment", fileName + ".pdf");

        return ResponseEntity.ok()
                .headers(headers)
                .body(pdfBytes);
    }
}
